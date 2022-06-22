import 'package:flutter/material.dart';

class courseCard extends StatelessWidget {
  final String courseTitle;
  final String subtitle;
  final String logoUrl;

  const courseCard({
    Key? key,
    required this.courseTitle,
    required this.subtitle,
    required this.logoUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Container(
            child: ListTile(
              leading: Container(
                width: 80,
                height: 80,
                padding: EdgeInsets.symmetric(vertical: 4),
                decoration: BoxDecoration(
                    color: Colors.grey[100],
                    borderRadius: BorderRadius.circular(8)),
                child: Image.network(
                  logoUrl,
                  fit: BoxFit.contain,
                ),
              ),
              title: Text(courseTitle),
              subtitle: Text(subtitle),
              trailing: Icon(Icons.more_horiz),
            ),
          ),
        ),
      ),
    );
  }
}
