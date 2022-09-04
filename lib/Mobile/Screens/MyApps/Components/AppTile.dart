import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolioapp/Mobile/Screens/MyApps/AppDetailScreen.dart';

class MyAppTile extends StatelessWidget {
  MyAppTile({Key? key}) : super(key: key);

  final String descriptionText = "Description: Basic 2D dice game.";
  final String appName = "Dice App";
  final String appImageUrl = "assets/images/Group_5.jpg";
  final int counter = 1;

  final TextStyle descriptionStyle = GoogleFonts.roboto(
    fontSize: 18,
    fontStyle: FontStyle.italic,
    color: Colors.black.withOpacity(0.5),
  );
  final TextStyle appNameStyle =
      GoogleFonts.ubuntu(fontSize: 32, fontWeight: FontWeight.bold);

  final BoxDecoration appTileCard = BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(12),
    boxShadow: const [
      BoxShadow(
        blurRadius: 5,
        color: Colors.black54,
        offset: Offset(2, 2),
      ),
    ],
    border: Border.all(color: Colors.black.withOpacity(0.5), width: 2),
  );

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showBottomSheet(
            context: context,
            builder: (context) {
              return AppDetailScreen();
            });
      },
      child: Container(
        margin: const EdgeInsets.all(20),
        height: 170,
        width: 460,
        decoration: appTileCard,
        child: Stack(
          children: [
            Positioned(
              left: 10,
              top: 20,
              child: Text(
                counter.toString() + ".",
                style: GoogleFonts.roboto(
                    fontSize: 22, fontWeight: FontWeight.w500),
              ),
            ),
            Positioned(
              left: 40,
              top: 20,
              child: Image.asset(appImageUrl, height: 70, width: 70),
            ),
            Positioned(
              left: 130,
              top: 20,
              child: Text(
                appName,
                style: appNameStyle,
              ),
            ),
            Positioned(
              left: 135,
              top: 58,
              child: Text(
                descriptionText,
                style: descriptionStyle,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: SizedBox(
                  width: 165,
                  height: 45,
                  child: ElevatedButton(
                    onPressed: () {
                      //todo: collBack
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(FontAwesomeIcons.download, size: 20),
                        Text(
                          "  Install",
                          style: GoogleFonts.ubuntu(fontSize: 24),
                        ),
                      ],
                    ),
                    style: ElevatedButton.styleFrom(
                        primary: const Color(0xff2BBB64),
                        onPrimary: Colors.black),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

///circular more info button
// Padding(
//   padding: const EdgeInsets.all(10.0),
//   child: Align(
//     alignment: Alignment.bottomRight,
//     child: GestureDetector(
//       onTap: () {},
//       child: Icon(
//         Icons.arrow_circle_right_rounded,
//         color: Color(0xff0A615C),
//         size: 40,
//         shadows: [
//           BoxShadow(
//               color: Colors.black, blurRadius: 2, spreadRadius: 5),
//         ],
//       ),
//     ),
//   ),
// ),
