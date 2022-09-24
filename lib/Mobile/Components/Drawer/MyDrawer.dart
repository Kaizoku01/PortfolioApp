import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolioapp/Mobile/Components/Drawer/Components/AccountsDrop.dart';
import 'package:portfolioapp/Mobile/Components/Drawer/Components/BulletText.dart';
import 'package:portfolioapp/Mobile/Components/Drawer/Components/DrawerHeaderVideo.dart';
import 'package:portfolioapp/Mobile/Components/Drawer/Components/ThemeSwitchButton.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xffCC95C0),
            Color(0xff7AA1D2),
          ],
        ),
      ),
      child: Drawer(
        backgroundColor: Colors.transparent,
        child: ListView(
          // padding: EdgeInsets.zero,
          children: [
            Stack(
              children: [
                SizedBox(
                  height: 220,
                  width: 310,
                  child: BackgroundVideoState(),
                ),
                Positioned(
                  top: 60,
                  left: 30,
                  // child: Text(
                  //   'Contents',
                  //   style: GoogleFonts.nunito(
                  //       fontSize: 34,
                  //       color: Colors.black,
                  //       fontWeight: FontWeight.bold),
                  // ),
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    backgroundImage: AssetImage('assets/images/dpbg.jpg'),
                    radius: 60,
                  ),
                ),
              ],
            ),
            ExpansionTile(
              title: Text(
                "Accounts",
                style: GoogleFonts.ubuntu(
                    fontSize: 24, fontWeight: FontWeight.w500),
              ),
              controlAffinity: ListTileControlAffinity.leading,
              children: [
                AccountsDrop(),
              ],
            ),
            ExpansionTile(
              title: Text(
                "Theme",
                style: GoogleFonts.ubuntu(
                    fontSize: 24, fontWeight: FontWeight.w500),
              ),
              controlAffinity: ListTileControlAffinity.leading,
              children: [
                Row(
                  children: [
                    BulletText(
                      text: "Mode",
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      style: GoogleFonts.ubuntu(
                          fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(width: 10),
                    const Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 10.0, horizontal: 20),
                      child: CircularToggleButton(),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

// class AccountsDrop extends StatelessWidget {
//   AccountsDrop({Key? key}) : super(key: key);
//
//   final bulletStrip = Container(
//     height: 50,
//     width: 5,
//     margin: EdgeInsets.symmetric(horizontal: 28, vertical: 5),
//     decoration: BoxDecoration(
//         color: Colors.white70, borderRadius: BorderRadius.circular(5)),
//   );
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
//         BulletText(
//           text: "LinkedIn",
//           padding: EdgeInsets.symmetric(horizontal: 30),
//           style: GoogleFonts.ubuntu(
//               fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
//           leading: Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 10),
//             child: SvgPicture.asset(
//               'assets/images/linkedin (1).svg',
//               height: 20,
//               width: 20,
//             ),
//           ),
//         ),
//         bulletStrip,
//         BulletText(
//           text: "Github",
//           padding: EdgeInsets.symmetric(horizontal: 30),
//           style: GoogleFonts.ubuntu(
//               fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
//           leading: Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 10),
//               child: Icon(FontAwesomeIcons.github, size: 20)),
//         ),
//         bulletStrip,
//         BulletText(
//           text: "LeetCode",
//           padding: EdgeInsets.symmetric(horizontal: 30),
//           style: GoogleFonts.ubuntu(
//               fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
//           leading: Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 10),
//             child: SvgPicture.asset(
//               'assets/images/leetcode.svg',
//               height: 20,
//               width: 20,
//             ),
//           ),
//         ),
//         bulletStrip,
//         BulletText(
//           text: "HackerRank",
//           padding: EdgeInsets.symmetric(horizontal: 30),
//           style: GoogleFonts.ubuntu(
//               fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
//           leading: Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 10),
//             child: SvgPicture.asset(
//               'assets/images/hackerrank.svg',
//               height: 20,
//               width: 20,
//             ),
//           ),
//         ),
//       ]),
//     );
//   }
// }

// class CircularToggleButton extends StatefulWidget {
//   const CircularToggleButton({Key? key}) : super(key: key);
//
//   @override
//   State<CircularToggleButton> createState() => _CircularToggleButtonState();
// }
//
// class _CircularToggleButtonState extends State<CircularToggleButton> {
//   bool toggleValue = false;
//
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: AnimatedContainer(
//         height: 30,
//         width: 70,
//         duration: Duration(milliseconds: 500),
//         decoration: BoxDecoration(
//           color: toggleValue ? Color(0xffCCCCCC) : Colors.yellow.shade200,
//           borderRadius: BorderRadius.circular(20),
//         ),
//         child: Stack(
//           children: [
//             AnimatedPositioned(
//               duration: Duration(milliseconds: 500),
//               curve: Curves.easeIn,
//               top: 2,
//               left: toggleValue ? 41.0 : 0,
//               right: toggleValue ? 0 : 41.0,
//               child: InkWell(
//                 onTap: toggleButton,
//                 child: AnimatedSwitcher(
//                   duration: Duration(milliseconds: 500),
//                   transitionBuilder:
//                       (Widget child, Animation<double> animation) {
//                     return RotationTransition(turns: animation, child: child);
//                   },
//                   child: toggleValue
//                       ? Container(
//                           //height: 30,
//                           decoration: const BoxDecoration(
//                             color: Colors.black,
//                             shape: BoxShape.circle,
//                           ),
//                           child: Icon(
//                             Icons.dark_mode,
//                             color: Colors.grey,
//                             size: 26,
//                             key: UniqueKey(),
//                           ),
//                         )
//                       : Container(
//                           //height: 30,
//                           decoration: const BoxDecoration(
//                             color: Colors.black,
//                             shape: BoxShape.circle,
//                           ),
//                           child: Icon(
//                             Icons.light_mode,
//                             color: Colors.yellowAccent,
//                             size: 26,
//                             key: UniqueKey(),
//                           ),
//                         ),
//                 ),
//               ),
//             ),
//             // AnimatedPositioned(
//             //   duration: Duration(milliseconds: 500),
//             //   child: toggleValue
//             //       ? const Text(
//             //           'DarkMode',
//             //           style:
//             //               TextStyle(fontSize: 8, fontWeight: FontWeight.bold),
//             //         )
//             //       : const Text(
//             //           'LightMode',
//             //           style:
//             //               TextStyle(fontSize: 8, fontWeight: FontWeight.bold),
//             //         ),
//             //   top: 10,
//             //   left: toggleValue ? 1 : 30,
//             //   right: toggleValue ? 30 : 1,
//             // )
//           ],
//         ),
//       ),
//     );
//   }
//
//   toggleButton() {
//     setState(() {
//       toggleValue = !toggleValue;
//     });
//   }
// }
