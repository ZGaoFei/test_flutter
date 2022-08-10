import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum SecondAction { action, back }

class SecondActionCreator {
  static Action onAction() {
    return const Action(SecondAction.action);
  }

  static Action onBack(String data) {
    return Action(SecondAction.back, payload: data);
  }
}
