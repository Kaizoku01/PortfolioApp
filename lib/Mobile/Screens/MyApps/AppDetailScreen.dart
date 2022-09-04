import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolioapp/Mobile/Screens/AboutMe/AboutMe.dart';
import 'package:portfolioapp/Mobile/Screens/Feat/FeatScreen.dart';
import 'package:portfolioapp/Mobile/Screens/MyApps/MyAppScreens.dart';

class AppDetailScreen extends StatelessWidget {
  AppDetailScreen({Key? key}) : super(key: key);

  final String appImageUrl = "assets/images/Group_5.jpg";
  final TextStyle appNameStyle = GoogleFonts.ubuntu(
      fontSize: 32, fontWeight: FontWeight.bold, color: Colors.white);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/baymax.jpg"),
          ),
        ),
        child: Stack(
          children: [
            Container(
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              color: Colors.black45,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Center(
                  child: Image.asset(appImageUrl, height: 100, width: 100),
                ),
                Text("Dice App", style: appNameStyle),
                Padding(
                  padding: const EdgeInsets.only(right: 300, top: 10),
                  child: Text(
                    "Description : ",
                    style:
                        GoogleFonts.roboto(fontSize: 20, color: Colors.white),
                  ),
                ),
                Text(
                  "Very amazing supremly satisfyung\nmazzza aaajaye\nkfhsfhsk\nfsjkgfkjds\nsdkjgfdsfjfkhsd\ndsflkjhshfklssd",
                  style: GoogleFonts.roboto(fontSize: 20, color: Colors.white),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 300, top: 10),
                  child: Text(
                    "Code : ",
                    style:
                        GoogleFonts.roboto(fontSize: 20, color: Colors.white),
                  ),
                ),
                Text(
                  "github/linkyahaaayega",
                  style: GoogleFonts.roboto(fontSize: 20, color: Colors.white),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 300, top: 10),
                  child: Text(
                    "Images : ",
                    style:
                        GoogleFonts.roboto(fontSize: 20, color: Colors.white),
                  ),
                ),
                SizedBox(
                  width: 400,
                  height: 300,
                  child: ListView.separated(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: 4,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        child: Image.asset('assets/images/baymax.jpg'),
                      );
                    },
                    separatorBuilder: (BuildContext context, int index) {
                      return SizedBox(width: 10);
                    },
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
