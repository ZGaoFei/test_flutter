import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<AnimationState> buildReducer() {
  return asReducer(
    <Object, Reducer<AnimationState>>{
      AnimationAction.action: _onAction,
    },
  );
}

AnimationState _onAction(AnimationState state, Action action) {
  final AnimationState newState = state.clone();
  return newState;
}
