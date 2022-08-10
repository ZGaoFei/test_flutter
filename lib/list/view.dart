import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'state.dart';

Widget buildView(ListState state, Dispatch dispatch, ViewService viewService) {
  return Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.black,
      title: const Text(
        "list",
        style: TextStyle(fontSize: 25, color: Colors.red),
      ),
    ),
    body: _buildItemWidget(state, dispatch, viewService),
  );
}

Widget _buildItemWidget(
    ListState state, Dispatch dispatch, ViewService viewService) {
  if (state.list == null) {
    return const Center(
      child: Text("暂无数据"),
    );
  } else {
    return ListView.builder(
      itemBuilder: viewService.buildAdapter().itemBuilder,
      itemCount: viewService.buildAdapter().itemCount,
    );
  }
}