import 'package:flutter/material.dart';

import '../widget/common/header.dart';
import '../widget/cursesPage/Recommended.dart';

class cursesPage extends StatefulWidget {
  const cursesPage({Key? key}) : super(key: key);

  @override
  State<cursesPage> createState() => _cursesPageState();
}

class _cursesPageState extends State<cursesPage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> animationHorizontal;
  late Animation<Offset> animationVertical;

  @override
  void initState() {
    super.initState();

    _controller =
        AnimationController(vsync: this, duration: Duration(seconds: 1));

    animationHorizontal = Tween<Offset>(
      begin: Offset(-1.0, 0.0),
      end: Offset.zero,
    ).animate(
        CurvedAnimation(parent: _controller, curve: Curves.easeInOutBack));

    animationVertical = Tween<Offset>(
      begin: Offset(0.0, 1.5),
      end: Offset.zero,
    ).animate(
        CurvedAnimation(parent: _controller, curve: Curves.easeInOutBack));

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                SlideTransition(
                    child: Header(title: 'Courses'),
                    position: animationHorizontal),
                SlideTransition(
                  child: Recommended(),
                  position: animationVertical,
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        elevation: 20,
        onPressed: () {
          _controller.reverse().then((value) => Navigator.of(context).pop());
        },
        child: Icon(
          Icons.keyboard_backspace,
          color: Colors.black,
        ),
      ),
    );
  }
}
