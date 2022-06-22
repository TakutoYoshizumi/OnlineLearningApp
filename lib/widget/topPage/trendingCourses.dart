import 'package:flutter/material.dart';

import '../../asset/component/buildContainer.dart';

class TrendingCourses extends StatelessWidget {
  const TrendingCourses({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            alignment: Alignment.topLeft,
            padding: EdgeInsets.only(top: 32, bottom: 8, left: 8),
            child: Text(
              'Trending Courses',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Card(
            elevation: 5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            child: Container(
              padding: EdgeInsets.all(16),
              child: Column(
                children: [
                  buildContainer(courseTitle: 'Communication Skills'),
                  SizedBox(height: 16),
                  buildContainer(courseTitle: 'Digital Marketing 101'),
                  SizedBox(height: 16),
                  buildContainer(courseTitle: 'UX Research'),
                  SizedBox(height: 16),
                  buildContainer(courseTitle: 'View trending list'),
                  SizedBox(height: 16),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
