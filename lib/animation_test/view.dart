import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:test_flutter/animation_test/widget/photo_widget.dart';

import 'state.dart';

Widget buildView(
    AnimationState state, Dispatch dispatch, ViewService viewService) {
  return Scaffold(
    appBar: AppBar(
      title: const Text("hero animation"),
    ),
    body: Center(
      child: PhotoWidget(
        photo: "image/bg_01.jpeg",
        width: 100.0,
        onTap: () {
          Navigator.of(viewService.context)
              .push(MaterialPageRoute(builder: (BuildContext context) {
            return Scaffold(
              appBar: AppBar(
                title: const Text("second page"),
              ),
              body: Container(
                color: Colors.lightBlueAccent,
                padding: const EdgeInsets.all(16),
                alignment: Alignment.topLeft,
                child: PhotoWidget(
                  photo: "image/bg_01.jpeg",
                  width: double.infinity,
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                ),
              ),
            );
          }));
        },
      ),
    ),
  );
}
