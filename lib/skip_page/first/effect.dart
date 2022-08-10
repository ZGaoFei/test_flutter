import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart' hide Action;

import 'action.dart';
import 'state.dart';

Effect<FirstState> buildEffect() {
  return combineEffects(<Object, Effect<FirstState>>{
    FirstAction.action: _onAction,
    FirstAction.nextPage: _onNextPage,
  });
}

void _onAction(Action action, Context<FirstState> ctx) {}

void _onNextPage(Action action, Context<FirstState> ctx) async {
  String data = action.payload;
  var arg = {"first": data}; // 注意这里是 : 冒号
  var result = Navigator.of(ctx.context).pushNamed("second_page", arguments: arg);
  print(result);
  result.then((value) => {
        print(value),
        ctx.dispatch(FirstActionCreator.update((value as Map)["second"]))
      });
}
