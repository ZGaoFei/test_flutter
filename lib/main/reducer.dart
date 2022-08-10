import 'package:fish_redux/fish_redux.dart';
import 'package:test_flutter/test/test.dart';

import 'action.dart';
import 'state.dart';

Reducer<EntranceState> buildReducer() {
  return asReducer(
    <Object, Reducer<EntranceState>>{
      EntranceAction.action: _onAction,
      EntranceAction.clicked: _onClickUpdate,
    },
  );
}

EntranceState _onAction(EntranceState state, Action action) {
  final EntranceState newState = state.clone();
  return newState;
}

EntranceState _onClickUpdate(EntranceState state, Action action) {
  final EntranceState newState = state.clone();
  newState.clickData = action.payload + " clicked!";
  print("reducer on click ${action.payload}");
  return newState;
}
