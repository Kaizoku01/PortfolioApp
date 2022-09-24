import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolioapp/Mobile/Components/BulletText.dart';
import 'package:portfolioapp/Mobile/Components/UniversalConstants.dart';

class FeatScreen extends StatelessWidget {
  const FeatScreen({Key? key}) : super(key: key);

  final String featBgUrl = "assets/images/feat_bg.jpg";
  final String resumeUrl = "assets/images/resume.jpg";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: kScaffoldBackground,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height / 3,
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      height: 250,
                      width: 180,
                      color: Colors.black,
                      child: Image.asset(resumeUrl),
                    ),
                    SizedBox(
                      height: 45,
                      width: 150,
                      child: ElevatedButton(
                        onPressed: () {}, //todo: callback
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(FontAwesomeIcons.download, size: 20),
                            Text(
                              " Resume",
                              style: GoogleFonts.ubuntu(fontSize: 24),
                            ),
                          ],
                        ),
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.white,
                          backgroundColor: Colors.brown,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(top: 25, left: 35),
                  child: Text(
                    "Skills : ",
                    style: GoogleFonts.ubuntu(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ),
              ),
              Container(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 60, top: 30),
                      child: BulletText(
                          text: 'C / C++',
                          bulletRadius: 7,
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          style: GoogleFonts.ubuntu(
                              fontSize: 24, fontWeight: FontWeight.w500),
                          bulletColor: Colors.black),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 180, top: 20),
                      child: BulletText(
                          text: 'Data Structure and\nAlgorithms',
                          bulletRadius: 7,
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          style: GoogleFonts.ubuntu(
                              fontSize: 24, fontWeight: FontWeight.w500),
                          bulletColor: Colors.black),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 60, top: 20),
                      child: BulletText(
                          text: 'Flutter / Dart',
                          bulletRadius: 7,
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          style: GoogleFonts.ubuntu(
                              fontSize: 24, fontWeight: FontWeight.w500),
                          bulletColor: Colors.black),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 180, top: 20),
                      child: BulletText(
                          text: 'MySql / Firebase',
                          bulletRadius: 7,
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          style: GoogleFonts.ubuntu(
                              fontSize: 24, fontWeight: FontWeight.w500),
                          bulletColor: Colors.black),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 60, top: 20),
                      child: BulletText(
                          text: 'Design Patterns and \n Principle',
                          bulletRadius: 7,
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          style: GoogleFonts.ubuntu(
                              fontSize: 24, fontWeight: FontWeight.w500),
                          bulletColor: Colors.black),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 180, top: 20),
                      child: BulletText(
                          text: 'Git / GitHub',
                          bulletRadius: 7,
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          style: GoogleFonts.ubuntu(
                              fontSize: 24, fontWeight: FontWeight.w500),
                          bulletColor: Colors.black),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(top: 25, left: 35),
                  child: Text(
                    "Certifications : ",
                    style: GoogleFonts.ubuntu(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                child: Image.asset("assets/images/3.jpg"),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                child: Image.asset("assets/images/2.jpg"),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                child: Image.asset("assets/images/1.jpg"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
