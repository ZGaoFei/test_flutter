import 'package:fish_redux/fish_redux.dart';
import 'package:test_flutter/list/bean/itemBaen.dart';

import 'action.dart';
import 'item/state.dart';
import 'state.dart';

Effect<ListState> buildEffect() {
  return combineEffects(<Object, Effect<ListState>>{
    ListAction.action: _onAction,
    Lifecycle.initState: _onGetData,
  });
}

void _onAction(Action action, Context<ListState> ctx) {}

void _onGetData(Action action, Context<ListState> ctx) {
  List<ItemDetailBean> list = [];
  for (int i = 0; i < 50; i++) {
    list.add(ItemDetailBean(imageUrl: "https://img2.baidu.com/it/u=1814268193,3619863984&fm=253&app=138&size=w931&n=0&f=JPEG&fmt=auto?sec=1658422800&t=d974afe62dd1225c4faa14b1538bf7f5", title: "$i行", content: "hello world"));
  }
  List<ItemState> itemStates = List.generate(list.length, (index) {
    return ItemState(bean: list[index]);
  });
  ctx.dispatch(ListActionCreator.onUpdateItem(itemStates));
}
