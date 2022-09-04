import 'package:flutter/material.dart';
import 'package:portfolioapp/Mobile/Screens/AboutMe/AboutMeContent.dart';

class AboutMe extends StatefulWidget {
  const AboutMe({
    Key? key,
  }) : super(key: key);
  @override
  State<AboutMe> createState() => _AboutMeState();
}

class _AboutMeState extends State<AboutMe> {
  final String myPhotoUrl = "assets/images/bgImage.jpg";

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Image.asset(
          myPhotoUrl,
          fit: BoxFit.cover,
        ),
        Container(
          height: double.infinity,
          width: double.infinity,
          color: Colors.black.withOpacity(0.2),
        ), // Blackish Filter-Look
        AboutMeContent(),
      ],
    );
  }
}
