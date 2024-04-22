import 'package:flutter/material.dart';

class CustomImageWidget extends StatelessWidget {
  final ImageProvider imageProvider;
  final double size;

  const CustomImageWidget({ required this.imageProvider, this.size = 100.0});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: imageProvider,
          fit: BoxFit.contain
        )
      ),
    );
  }
}