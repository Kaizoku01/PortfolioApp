import 'package:flutter/material.dart';
import 'package:portfolioapp/Mobile/Screens/MyApps/Components/AppTile.dart';

class MyAppScreen extends StatelessWidget {
  const MyAppScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/baymax.jpg"), fit: BoxFit.cover),
        ),
        child: ListView.builder(
          padding: const EdgeInsets.all(8),
          itemCount: 2,
          itemBuilder: (BuildContext context, int index) {
            return MyAppTile();
          },
        ),
      ),
    );
  }
}
