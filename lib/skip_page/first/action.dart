import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum FirstAction { action, nextPage, update }

class FirstActionCreator {
  static Action onAction() {
    return const Action(FirstAction.action);
  }

  static Action nextPage(String data) {
    return Action(FirstAction.nextPage, payload: data);
  }

  static Action update(String data) {
    return Action(FirstAction.update, payload: data);
  }
}
