import 'package:flutter/material.dart';
import 'package:online_learning/asset/figmaLogo.dart';

class Feature extends StatelessWidget {
  const Feature({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            width: double.infinity,
            padding: EdgeInsets.only(
              top: 32,
              left: 8,
            ),
            alignment: Alignment.centerLeft,
            child: Text(
              'Featured',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Stack(
            children: [
              Container(
                child: Container(
                  margin: EdgeInsets.only(top: 24),
                  child: Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 32,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(Icons.navigate_before),
                          Container(
                            width: 180,
                            child: Column(
                              children: [
                                Text(
                                  'Figma: Solid Foundations',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                SizedBox(height: 16),
                                Text(
                                  'The most complete beginner to advanced guide',
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ),
                          Icon(Icons.navigate_next),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topCenter,
                child: FigmaLogo(
                  size: 48,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
