import 'package:flutter/material.dart';

Material buildContainer({required String courseTitle}) {
  return Material(
    elevation: 2,
    child: Container(
      color: Colors.grey[100],
      child: ListTile(
        leading: Icon(
          Icons.school,
          color: Colors.blue[400],
        ),
        trailing: Text(courseTitle),
      ),
    ),
  );
}
