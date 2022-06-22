import 'package:flutter/material.dart';
import 'package:online_learning/asset/url.dart';

import 'courseCard.dart';

class Recommended extends StatelessWidget {
  const Recommended({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.only(top: 32, bottom: 8, left: 8),
          alignment: Alignment.centerLeft,
          child: Text(
            'Recommended',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        courseCard(
          courseTitle: 'Figma',
          subtitle: 'Figma Mastery',
          logoUrl: figmaLogoUrl,
        ),
        courseCard(
          courseTitle: 'Sketch',
          subtitle: 'Symbol Libraries',
          logoUrl: sketchLogoUrl,
        ),
        courseCard(
          courseTitle: 'Photoshop',
          subtitle: 'Adobe Photoshop',
          logoUrl: photoShopUrl,
        ),
        courseCard(
          courseTitle: 'Adobe XD',
          subtitle: 'Fundamentals of XD',
          logoUrl: xdLogoUrl,
        ),
        courseCard(
          courseTitle: 'Premiere Pro',
          subtitle: 'Adobe Premiere Pro',
          logoUrl: PremiereProUrl,
        ),
        courseCard(
          courseTitle: 'Excel',
          subtitle: 'Microsoft excel',
          logoUrl: ExcelUrl,
        ),
        courseCard(
          courseTitle: 'Visual Studio ',
          subtitle: 'Microsoft Visual Studio',
          logoUrl: VscodeUrl,
        ),
      ],
    );
  }
}
