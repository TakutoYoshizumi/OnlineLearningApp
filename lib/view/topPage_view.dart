import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:online_learning/asset/animation/animation.dart';
import 'package:online_learning/widget/topPage/feature.dart';
import 'package:online_learning/widget/topPage/hero.dart';

import '../widget/common/header.dart';
import '../widget/topPage/trendingCourses.dart';
import 'cursesPage.dart';

class TopPage extends StatefulWidget {
  const TopPage({Key? key}) : super(key: key);

  @override
  State<TopPage> createState() => _TopPageState();
}

class _TopPageState extends State<TopPage> with SingleTickerProviderStateMixin {
  late AnimationController controller;

  late Animation<Offset> _animation1;
  late Animation<Offset> _animation2;
  late Animation<Offset> _animation3;
  late Animation<Offset> _animation4;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    );

    _animation1 = animation(controller: controller, firstInt: 0.0, endInt: 0.7);
    _animation2 = animation(controller: controller, firstInt: 0.1, endInt: 0.8);
    _animation3 = animation(controller: controller, firstInt: 0.2, endInt: 0.9);
    _animation4 = animation(controller: controller, firstInt: 0.3, endInt: 1.0);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                SlideTransition(
                  child: Header(title: 'TurtleU'),
                  position: _animation1,
                ),
                SlideTransition(
                  child: HeroUi(),
                  position: _animation2,
                ),
                SlideTransition(
                  child: Feature(),
                  position: _animation3,
                ),
                SlideTransition(
                  child: TrendingCourses(),
                  position: _animation4,
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 10,
        backgroundColor: Colors.white,
        onPressed: () {
          controller.forward().then((_) {
            Navigator.of(context)
                .push(
                  PageRouteBuilder(pageBuilder: (_, __, ___) => cursesPage()),
                )
                .then((_) => controller.reverse());
          });
        },
        child: Icon(
          Icons.list,
          color: Colors.black,
        ),
      ),
    );
  }
}
