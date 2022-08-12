import 'package:fish_redux/fish_redux.dart';

class AnimationState implements Cloneable<AnimationState> {

  @override
  AnimationState clone() {
    return AnimationState();
  }
}

AnimationState initState(Map<String, dynamic> args) {
  return AnimationState();
}
