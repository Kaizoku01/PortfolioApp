import 'package:flutter/material.dart';

class MyBullet extends StatelessWidget {
  const MyBullet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.0),
      child: Icon(
        Icons.circle_rounded,
        color: Colors.black,
        size: 12,
      ),
    );
  }
}
