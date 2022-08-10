import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart' hide Action;

import 'action.dart';
import 'state.dart';

Effect<SecondState> buildEffect() {
  return combineEffects(<Object, Effect<SecondState>>{
    SecondAction.action: _onAction,
    SecondAction.back: _onBack,
  });
}

void _onAction(Action action, Context<SecondState> ctx) {}

void _onBack(Action action, Context<SecondState> ctx) {
  var arg = {"second" : action.payload};
  Navigator.of(ctx.context).pop(arg);
}
