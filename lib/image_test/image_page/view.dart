import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'action.dart';
import 'state.dart';

String imageUrl =
    "https://c-ssl.dtstatic.com/uploads/item/202003/20/20200320085349_ofgnx.thumb.1000_0.png";

Widget buildView(ImageState state, Dispatch dispatch, ViewService viewService) {
  return Container(
    width: double.infinity,
    height: double.infinity,
    decoration: BoxDecoration(
      image: DecorationImage(
        fit: BoxFit.cover,
        image: _buildNetImage(),
      ),
    ),
    // child: _buildFadeInImage(),
  );
}

ImageProvider _buildImage() {
  return AssetImage("image/bg_01.jpeg");
}

ImageProvider _buildNetImage() {
  return NetworkImage(imageUrl);
}

Widget _buildFadeInImage() {
  return FadeInImage(placeholder: _buildImage(), image: NetworkImage(imageUrl));
}
