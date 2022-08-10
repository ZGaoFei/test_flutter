import 'package:fish_redux/fish_redux.dart';
import 'package:test_flutter/main/model.dart';

//TODO replace with your own action
enum EntranceAction { action, click, clicked}

class EntranceActionCreator {
  static Action onAction() {
    return const Action(EntranceAction.action);
  }

  static Action onClick(String clickData) {
    return Action(EntranceAction.click, payload: clickData);
  }

  static Action onClickUpdate(String clickData) {
    return Action(EntranceAction.clicked, payload: clickData);
  }
}
