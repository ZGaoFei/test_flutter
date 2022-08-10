import 'package:fish_redux/fish_redux.dart';

import 'item/state.dart';

//TODO replace with your own action
enum ListAction { action, updateItem }

class ListActionCreator {
  static Action onAction() {
    return const Action(ListAction.action);
  }

  static Action onUpdateItem(List<ItemState> states) {
    return Action(ListAction.updateItem, payload: states);
  }
}
