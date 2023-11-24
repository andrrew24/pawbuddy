import 'package:flutter/material.dart';

class ShowImage extends StatelessWidget {
  const ShowImage({
    super.key,
    required this.height,
    required this.width,
    required this.imgPath,
  });

  final double height;
  final double width;
  final String imgPath;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.fitHeight, image: AssetImage(imgPath))),
    );
  }
}
