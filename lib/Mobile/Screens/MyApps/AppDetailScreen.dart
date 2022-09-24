import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolioapp/Mobile/Components/UniversalConstants.dart';
import 'package:portfolioapp/Mobile/Screens/AboutMe/AboutMe.dart';
import 'package:portfolioapp/Mobile/Screens/Feat/FeatScreen.dart';
import 'package:portfolioapp/Mobile/Screens/MyApps/MyAppScreens.dart';

class AppDetailScreen extends StatelessWidget {
  AppDetailScreen({Key? key}) : super(key: key);

  final String appImageUrl = "assets/images/Group_5.jpg";
  final TextStyle appNameStyle = GoogleFonts.ubuntu(
      fontSize: 32, fontWeight: FontWeight.bold, color: Colors.white);
  final String desc =
      "Lorem ipsum dolor sit \nametras dapibus\nfacilisis condibitasse platea dictumst. \nEtiam nisi dapibus. Vivamus variu";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: kScaffoldBackground,
        child: Stack(
          children: [
            Container(
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              color: Colors.black.withOpacity(0.35),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Center(
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Image.asset(appImageUrl, height: 100, width: 100),
                  ),
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
                  desc,
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
                  "github/link_to_be_added_here",
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
