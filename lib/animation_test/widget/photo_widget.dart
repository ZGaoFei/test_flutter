import 'package:flutter/material.dart';

class PhotoWidget extends StatelessWidget {
  final String photo;
  final VoidCallback onTap;
  final double width;

  const PhotoWidget({Key? key, required this.photo, required this.onTap, required this.width}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: Hero(
        tag: photo,
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: onTap,
            child: Image.asset(photo, fit: BoxFit.cover)
          ),
        ),
      ),
    );
  }
}
