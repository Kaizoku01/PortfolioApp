import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolioapp/Mobile/Components/MyBullet.dart';

class AboutMeContent extends StatelessWidget {
  AboutMeContent({Key? key}) : super(key: key);

  final String bioPassage =
      'Passionate about Mobile\nApplication Development,\nhaving experience of 1+\nyrs in this field.';

  final TextStyle skillStyle =
      GoogleFonts.ubuntu(fontSize: 15, fontWeight: FontWeight.w700);
  final TextStyle bioStyle =
      GoogleFonts.nunito(fontSize: 20, fontWeight: FontWeight.w700);

  final List<String> skillText = [
    "C++/ Java/ Python",
    "Flutter/ Dart",
    "Git/ Github",
    "MySQL/ Firebase",
    "Data Structures and Algorithms",
    "Design Patterns & Principles"
  ];

  final BoxDecoration skillContainerDecoration = BoxDecoration(
    color: Colors.white.withOpacity(0.65),
    borderRadius: const BorderRadius.only(
      topLeft: Radius.circular(30),
      topRight: Radius.circular(30),
      bottomLeft: Radius.circular(30),
      bottomRight: Radius.circular(30),
    ),
  );
  final BoxDecoration bioContainerDecoration = BoxDecoration(
    color: Colors.white.withOpacity(0.65),
    // shape: BoxShape.circle,
    borderRadius: const BorderRadius.only(
      topLeft: Radius.circular(30),
      bottomLeft: Radius.circular(30),
      bottomRight: Radius.circular(30),
      // topRight: Radius.circular(30),
    ),
  );

  @override
  Widget build(BuildContext context) {
    //Header
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.only(left: 40, top: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    "Hey There",
                    style: GoogleFonts.ubuntu(
                      fontSize: 45,
                      color: Colors.white,
                    ),
                  ),
                  const Text(
                    "\u{1F44B}",
                    style: TextStyle(color: Colors.white, fontSize: 40),
                  ),
                ],
              ),
              const SizedBox(height: 25),
              Text(
                "Sarvagya Saxena",
                style: GoogleFonts.ubuntu(
                  fontSize: 50,
                  color: Colors.white,
                  textStyle: const TextStyle(letterSpacing: 2),
                ),
              ),
              const SizedBox(height: 15),
              Row(
                children: [
                  const FlutterLogo(
                    size: 50,
                  ),
                  Text(
                    " Flutter Developer",
                    style: GoogleFonts.ubuntu(
                        fontSize: 30,
                        color: Colors.white,
                        fontWeight: FontWeight.w700),
                  ),
                ],
              ),
            ],
          ),
        ),
        //Bottom
        const SizedBox(height: 400),
        Padding(
          padding: const EdgeInsets.only(right: 150),
          child: Container(
            margin: const EdgeInsets.only(left: 10, bottom: 5, right: 10),
            height: 150,
            width: 300,
            decoration: bioContainerDecoration,
            child: Center(
              child: Text(
                bioPassage,
                style: bioStyle,
              ),
            ),
          ),
        ),
        // Container(
        //   margin: const EdgeInsets.only(left: 10),
        //   height: 290,
        //   width: 280,
        //   decoration: skillContainerDecoration,
        //   child: Column(
        //     mainAxisAlignment: MainAxisAlignment.spaceAround,
        //     children: [
        //       Text(
        //         "Skills",
        //         style: GoogleFonts.ubuntu(
        //             fontSize: 20, fontWeight: FontWeight.w700),
        //       ),
        //       Row(
        //         children: [
        //           const MyBullet(),
        //           Text(skillText[0], style: skillStyle)
        //         ],
        //       ),
        //       Row(
        //         children: [
        //           const MyBullet(),
        //           Text(skillText[1], style: skillStyle)
        //         ],
        //       ),
        //       Row(
        //         children: [
        //           const MyBullet(),
        //           Text(skillText[2], style: skillStyle)
        //         ],
        //       ),
        //       Row(
        //         children: [
        //           const MyBullet(),
        //           Text(skillText[3], style: skillStyle)
        //         ],
        //       ),
        //       Row(
        //         children: [
        //           const MyBullet(),
        //           Text(skillText[4], style: skillStyle)
        //         ],
        //       ),
        //       Row(
        //         children: [
        //           const MyBullet(),
        //           Text(skillText[5], style: skillStyle)
        //         ],
        //       ),
        //     ],
        //   ),
        // ),
      ],
    );
  }
}

///DROP DOWN CONTAINER WITH ANIMATED_CONTAINER
// GestureDetector(
// child: AnimatedContainer(
// curve: Curves.bounceOut,
// duration: const Duration(milliseconds: 500),
// height: selected ? 300 : 55,
// width: MediaQuery.of(context).size.width * .9,
// decoration: const BoxDecoration(
// color: Colors.white38,
// borderRadius: BorderRadius.all(Radius.elliptical(30, 90)),
// ),
// child: Visibility(
// visible: selected ? false : true,
// child: Row(
// mainAxisAlignment: MainAxisAlignment.spaceEvenly,
// children: [
// Icon(
// selected
// ? FontAwesomeIcons.anglesUp
//     : FontAwesomeIcons.anglesDown,
// size: 25,
// ),
// Text(
// "Bio",
// style: GoogleFonts.ubuntu(fontSize: 30),
// ),
// Icon(
// selected
// ? FontAwesomeIcons.anglesUp
//     : FontAwesomeIcons.anglesDown,
// size: 25,
// ),
// ],
// ),
// ),
// ),
// onTap: () {
// function!(selected);
// },
// ),
