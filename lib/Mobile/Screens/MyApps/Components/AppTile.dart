import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolioapp/Mobile/Screens/MyApps/AppDetailScreen.dart';

class MyAppTile extends StatelessWidget {
  MyAppTile({Key? key}) : super(key: key);

  final String descriptionText = "Description: Basic 2D dice game.";
  final String appName = "Dice App";
  final String appImageUrl = "assets/images/Group_5.jpg";

  final TextStyle descriptionStyle = GoogleFonts.roboto(
    fontSize: 18,
    fontStyle: FontStyle.italic,
    color: Colors.black.withOpacity(0.5),
  );
  final TextStyle appNameStyle =
      GoogleFonts.ubuntu(fontSize: 32, fontWeight: FontWeight.bold);

  final BoxDecoration appTileCard = BoxDecoration(
    //color: Colors.white,
    gradient: const LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [
        Color(0xffACB6E5),
        Color(0xff86FDE8),
      ],
    ),
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
        height: 200,
        width: 460,
        decoration: appTileCard,
        child: Stack(
          children: [
            Positioned(
              left: 25,
              top: 20,
              child: GestureDetector(
                child: Image.asset(appImageUrl, height: 70, width: 70),
                onTap: () {},
              ),
            ),
            Positioned(
              left: 110,
              top: 20,
              child: Text(
                appName,
                style: appNameStyle,
              ),
            ),
            Positioned(
              left: 110,
              top: 65,
              child: Text(
                descriptionText,
                style: descriptionStyle,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: SizedBox(
                  width: 200,
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
                          style: GoogleFonts.ubuntu(fontSize: 28),
                        ),
                      ],
                    ),
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.black,
                      backgroundColor: const Color(0xff2BBB64),
                    ),
                  ),
                ),
              ),
            ),
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
