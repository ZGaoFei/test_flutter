import 'package:fish_redux/fish_redux.dart';
import 'package:test_flutter/list/item/state.dart';

import 'adapter.dart';

class ListState extends MutableSource implements Cloneable<ListState> {
  List<ItemState> list = [];

  @override
  ListState clone() {
    return ListState()..list = list;
  }

  @override
  Object getItemData(int index) {
    return list[index];
  }

  @override
  String getItemType(int index) {
    return ListItemAdapter.item_style;
  }

  @override
  int get itemCount => list.length;

  @override
  void setItemData(int index, Object data) {
    list[index] = data as ItemState;
  }
}

ListState initState(Map<String, dynamic> args) {
  return ListState();
}
