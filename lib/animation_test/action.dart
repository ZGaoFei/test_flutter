import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum AnimationAction { action }

class AnimationActionCreator {
  static Action onAction() {
    return const Action(AnimationAction.action);
  }
}
