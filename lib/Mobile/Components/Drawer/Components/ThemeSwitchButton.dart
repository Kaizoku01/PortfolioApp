import 'package:flutter/material.dart';

class CircularToggleButton extends StatefulWidget {
  const CircularToggleButton({Key? key}) : super(key: key);

  @override
  State<CircularToggleButton> createState() => _CircularToggleButtonState();
}

class _CircularToggleButtonState extends State<CircularToggleButton> {
  bool toggleValue = false;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AnimatedContainer(
        height: 30,
        width: 70,
        duration: Duration(milliseconds: 500),
        decoration: BoxDecoration(
          color: toggleValue ? Color(0xffCCCCCC) : Colors.yellow.shade200,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Stack(
          children: [
            AnimatedPositioned(
              duration: Duration(milliseconds: 500),
              curve: Curves.easeIn,
              top: 2,
              left: toggleValue ? 41.0 : 0,
              right: toggleValue ? 0 : 41.0,
              child: InkWell(
                onTap: toggleButton,
                child: AnimatedSwitcher(
                  duration: Duration(milliseconds: 500),
                  transitionBuilder:
                      (Widget child, Animation<double> animation) {
                    return RotationTransition(turns: animation, child: child);
                  },
                  child: toggleValue
                      ? Container(
                          //height: 30,
                          decoration: const BoxDecoration(
                            color: Colors.black,
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            Icons.dark_mode,
                            color: Colors.grey,
                            size: 26,
                            key: UniqueKey(),
                          ),
                        )
                      : Container(
                          //height: 30,
                          decoration: const BoxDecoration(
                            color: Colors.black,
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            Icons.light_mode,
                            color: Colors.yellowAccent,
                            size: 26,
                            key: UniqueKey(),
                          ),
                        ),
                ),
              ),
            ),
            // AnimatedPositioned(
            //   duration: Duration(milliseconds: 500),
            //   child: toggleValue
            //       ? const Text(
            //           'DarkMode',
            //           style:
            //               TextStyle(fontSize: 8, fontWeight: FontWeight.bold),
            //         )
            //       : const Text(
            //           'LightMode',
            //           style:
            //               TextStyle(fontSize: 8, fontWeight: FontWeight.bold),
            //         ),
            //   top: 10,
            //   left: toggleValue ? 1 : 30,
            //   right: toggleValue ? 30 : 1,
            // )
          ],
        ),
      ),
    );
  }

  toggleButton() {
    setState(() {
      toggleValue = !toggleValue;
    });
  }
}
