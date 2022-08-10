import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'state.dart';

Widget buildView(ItemState state, Dispatch dispatch, ViewService viewService) {
  return Container(
    height: 60,
    margin: const EdgeInsets.all(5),
    padding: const EdgeInsets.all(5),
    decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(5)),
        boxShadow: [
          BoxShadow(
              color: Colors.grey,
              offset: Offset(1, 1),
              blurRadius: 10,
              spreadRadius: 1)
        ]),
    child: Row(
      children: [
        Image.network(
          state.bean?.imageUrl ?? "",
          width: 50,
          height: 50,
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
          child: Column(
            children: [
              Text(
                state.bean?.title ?? "",
                style: const TextStyle(fontSize: 20, color: Colors.red),
              ),
              Text(
                state.bean?.content ?? "",
                style: const TextStyle(fontSize: 15, color: Colors.red),
              ),
            ],
          ),
        )
      ],
    ),
  );
}
