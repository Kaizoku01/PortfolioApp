import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: Text(
        "Portfolio",
        style: GoogleFonts.nunito(fontSize: 40, fontWeight: FontWeight.bold),
      ),
      // leading: Builder(
      //   builder: (context) {
      //     return IconButton(
      //       icon: Icon(
      //         FontAwesomeIcons.bars,
      //         size: 30,
      //       ),
      //       onPressed: () {
      //         Scaffold.of(context).openDrawer();
      //       },
      //       tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
      //     );
      //   },
      // ),
      backgroundColor: Colors.transparent,
      bottom: const TabBar(
        tabs: [
          Tab(
            text: "About me",
          ),
          Tab(
            text: "My Apps",
          ),
          Tab(
            text: "Feat",
          ),
        ],
      ),
    );
  }
}
