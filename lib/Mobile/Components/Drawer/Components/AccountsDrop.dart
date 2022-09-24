import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolioapp/Mobile/Components/Drawer/Components/BulletText.dart';
//import 'package:portfolioapp/Mobile/Components/BulletText.dart';

class AccountsDrop extends StatelessWidget {
  AccountsDrop({Key? key}) : super(key: key);

  final bulletStrip = Container(
    height: 50,
    width: 5,
    margin: EdgeInsets.symmetric(horizontal: 28, vertical: 5),
    decoration: BoxDecoration(
        color: Colors.white70, borderRadius: BorderRadius.circular(5)),
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        BulletText(
          text: "LinkedIn",
          padding: EdgeInsets.symmetric(horizontal: 30),
          style: GoogleFonts.ubuntu(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
          leading: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: SvgPicture.asset(
              'assets/images/linkedin (1).svg',
              height: 20,
              width: 20,
            ),
          ),
        ),
        bulletStrip,
        BulletText(
          text: "Github",
          padding: EdgeInsets.symmetric(horizontal: 30),
          style: GoogleFonts.ubuntu(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
          leading: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Icon(FontAwesomeIcons.github, size: 20)),
        ),
        bulletStrip,
        BulletText(
          text: "LeetCode",
          padding: EdgeInsets.symmetric(horizontal: 30),
          style: GoogleFonts.ubuntu(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
          leading: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: SvgPicture.asset(
              'assets/images/leetcode.svg',
              height: 20,
              width: 20,
            ),
          ),
        ),
        bulletStrip,
        BulletText(
          text: "HackerRank",
          padding: EdgeInsets.symmetric(horizontal: 30),
          style: GoogleFonts.ubuntu(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
          leading: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: SvgPicture.asset(
              'assets/images/hackerrank.svg',
              height: 20,
              width: 20,
            ),
          ),
        ),
      ]),
    );
  }
}
