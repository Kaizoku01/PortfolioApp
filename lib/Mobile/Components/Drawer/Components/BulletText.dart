import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BulletText extends StatelessWidget {
  const BulletText({
    Key? key,
    required this.text,
    this.bulletRadius = 5,
    this.padding = const EdgeInsets.all(10),
    this.style,
    this.bulletColor = Colors.black,
    this.leading,
  }) : super(key: key);

  final String text;
  final double bulletRadius;
  final EdgeInsetsGeometry padding;
  final TextStyle? style;
  final Color bulletColor;
  final Widget? leading;

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
        leading ?? Container(),
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
