import 'package:fish_redux/fish_redux.dart';

import '../bean/itemBaen.dart';

class ItemState implements Cloneable<ItemState> {
  ItemDetailBean? bean;

  ItemState({this.bean});

  @override
  ItemState clone() {
    return ItemState()..bean = bean;
  }
}

ItemState initState(Map<String, dynamic> args) {
  return ItemState();
}
