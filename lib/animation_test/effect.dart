import 'package:fish_redux/fish_redux.dart';
import 'action.dart';
import 'state.dart';

Effect<AnimationState> buildEffect() {
  return combineEffects(<Object, Effect<AnimationState>>{
    AnimationAction.action: _onAction,
  });
}

void _onAction(Action action, Context<AnimationState> ctx) {
}
