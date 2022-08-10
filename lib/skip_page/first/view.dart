import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(FirstState state, Dispatch dispatch, ViewService viewService) {
  return Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.red,
      title: const Text("first"),
    ),
    body: Center(
      child: Column(
        children: [
          GestureDetector(
            onTap: () {
              dispatch(FirstActionCreator.nextPage("这是传给下个页面的数据"));
            },
            child: const Text(
              "skip to next page",
              style: TextStyle(fontSize: 25, color: Colors.red),
            ),
          ),
          Text(
            state.data,
            style: const TextStyle(color: Colors.black, fontSize: 30),
          ),
        ],
      ),
    ),
  );
}
