import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Effect<EntranceState> buildEffect() {
  return combineEffects(<Object, Effect<EntranceState>>{
    EntranceAction.action: _onAction,
    EntranceAction.click: _onClick,
  });
}

void _onAction(Action action, Context<EntranceState> ctx) {
  print("effect on action");
}

void _onClick(Action action, Context<EntranceState> ctx) {
  print("effect on click ${action.payload}");
  var payload = action.payload;
  String result = payload + " hahaha";
  ctx.dispatch(EntranceActionCreator.onClickUpdate(result));
}
