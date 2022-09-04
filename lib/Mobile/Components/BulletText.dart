import 'package:flutter/material.dart';

class BulletText extends StatelessWidget {
  const BulletText({
    Key? key,
    required this.text,
    required this.bulletRadius,
    required this.padding,
    required this.style,
    required this.bulletColor,
  }) : super(key: key);
  final String text;
  final double bulletRadius;
  final EdgeInsetsGeometry padding;
  final TextStyle style;
  final Color bulletColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: padding,
          child: CustomPaint(
            painter: PaintedBullet(radius: bulletRadius, color: bulletColor),
          ),
        ),
        Text(text, style: style),
      ],
    );
  }
}

class PaintedBullet extends CustomPainter {
  PaintedBullet({required this.radius, required this.color});
  final double radius;
  final Color color;
  @override
  void paint(Canvas canvas, Size size) {
    var center = size / 2;
    var paint = Paint()..color = color;

    canvas.drawCircle(Offset(center.width, center.height), radius, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
