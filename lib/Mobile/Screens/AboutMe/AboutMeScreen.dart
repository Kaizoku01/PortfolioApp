import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/parser.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolioapp/Mobile/Components/BulletText.dart';

class AboutMeScreen extends StatelessWidget {
  const AboutMeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xff00416A),
              Color(0xffE4E5E6),
            ],
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    right: 25, left: 25, top: 25, bottom: 10),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    "assets/images/yyy.jpg",
                  ),
                ),
              ),
              Text(
                'Sarvagya Saxena',
                style: GoogleFonts.ubuntu(
                  fontSize: 42,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 450,
                  height: 120,
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                    child: Text(
                      'Passionate about Mobile Application Development,\nhaving experience of 1+ yrs in this field.',
                      style: GoogleFonts.roboto(fontSize: 18),
                    ),
                  ),
                ),
              ),
              Column(
                children: [
                  ListTile(
                    leading: SvgPicture.asset(
                      'assets/images/gcap.svg',
                      height: 30,
                      width: 30,
                    ),
                    title: Text(
                      'Education :',
                      style: GoogleFonts.ubuntu(
                          fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  BulletText(
                      text: 'Jaypee Institute Of Infomation Technology,\nNoida',
                      bulletRadius: 5,
                      padding: EdgeInsets.only(left: 80, right: 20),
                      style: GoogleFonts.roboto(fontSize: 18),
                      bulletColor: Colors.black),
                  BulletText(
                      text: 'Bachelor\'s in Technology, CSE',
                      bulletRadius: 5,
                      padding: EdgeInsets.only(left: 105, right: 20),
                      style: GoogleFonts.roboto(fontSize: 18),
                      bulletColor: Colors.black),
                  BulletText(
                      text: 'Graduation Year : 2024',
                      bulletRadius: 5,
                      padding: EdgeInsets.only(left: 105, right: 20),
                      style: GoogleFonts.roboto(fontSize: 18),
                      bulletColor: Colors.black),
                  ListTile(
                    leading: SvgPicture.asset(
                      'assets/images/work.svg',
                      height: 30,
                      width: 30,
                    ),
                    title: Text(
                      'Experience:',
                      style: GoogleFonts.ubuntu(
                          fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  BulletText(
                    text: 'VYAM',
                    bulletRadius: 5,
                    padding: EdgeInsets.only(left: 80, right: 20),
                    style: GoogleFonts.roboto(fontSize: 18),
                    bulletColor: Colors.black,
                  ),
                  BulletText(
                      text: 'Role : Flutter Developer Intern',
                      bulletRadius: 5,
                      padding: EdgeInsets.only(left: 105, right: 20),
                      style: GoogleFonts.roboto(fontSize: 18),
                      bulletColor: Colors.black),
                  BulletText(
                      text: 'Duration : 1 month',
                      bulletRadius: 5,
                      padding: EdgeInsets.only(left: 105, right: 20),
                      style: GoogleFonts.roboto(fontSize: 18),
                      bulletColor: Colors.black),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
