import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolioapp/Mobile/Components/MyDrawer.dart';
import 'package:portfolioapp/Mobile/Screens/AboutMe/AboutMe.dart';
import 'package:portfolioapp/Mobile/Screens/AboutMe/AboutMeScreen.dart';
import 'package:portfolioapp/Mobile/Screens/Feat/FeatScreen.dart';
import 'package:portfolioapp/Mobile/Screens/MyApps/MyAppScreens.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 3,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.transparent,
          drawer: MyDrawer(),
          body: NestedScrollView(
            headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
              return <Widget>[
                SliverAppBar(
                  centerTitle: true,
                  title: Text(
                    "Portfolio",
                    style: GoogleFonts.nunito(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  pinned: true,
                  floating: true,
                  // flexibleSpace: Image(
                  //   image: AssetImage('assets/images/appBarbg.jpg'),
                  //   fit: BoxFit.cover,
                  // ),
                  backgroundColor: Color(0xff498CDF),
                  //backgroundColor: Colors.transparent,
                  bottom: TabBar(
                    indicatorColor: Colors.white,
                    tabs: [
                      Tab(
                        child: Text(
                          "About me",
                          style: GoogleFonts.ubuntu(
                            fontSize: 22,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      Tab(
                        child: Text(
                          "My Apps",
                          style: GoogleFonts.ubuntu(
                            fontSize: 22,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      Tab(
                        child: Text(
                          "Feat",
                          style: GoogleFonts.ubuntu(
                            fontSize: 22,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ];
            },
            body: TabBarView(
              children: [
                AboutMeScreen(),
                MyAppScreen(),
                FeatScreen(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
