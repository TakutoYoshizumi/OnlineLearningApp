import 'package:flutter/material.dart';
import 'package:online_learning/asset/url.dart';

class FigmaLogo extends StatelessWidget {
  final double size;

  const FigmaLogo({
    Key? key,
    required this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Container(
        width: size,
        height: size,
        padding: EdgeInsets.all(8),
        color: Colors.black,
        child: Image.network(figmaLogoUrl, fit: BoxFit.contain),
      ),
    );
  }
}
