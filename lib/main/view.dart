import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(
    EntranceState state, Dispatch dispatch, ViewService viewService) {
  return Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.red,
      title: const Text("fish redux"),
    ),
    body: Center(
      child: GestureDetector(
        onTap: () {
          print("click");
          // viewService.broadcast(EntranceActionCreator.onClick("click!!!!"));
          // dispatch(EntranceActionCreator.onClick("click!!!!"));
          dispatch(EntranceActionCreator.onClickUpdate("click!!!!"));
        },
        child: Text(state.clickData,
            style: TextStyle(color: Colors.black, fontSize: 30)),
      ),
    ),
  );
}
