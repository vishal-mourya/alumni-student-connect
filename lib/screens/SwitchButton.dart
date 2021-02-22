// import 'package:custom_switch/custom_switch.dart';
// import 'package:flutter/material.dart';
//
// class SwitchButton extends StatefulWidget {
//   @override
//   _SwitchButtonState createState() => _SwitchButtonState();
// }
//
// class _SwitchButtonState extends State<SwitchButton> {
//   bool enableSwitch = false;
//
//   void _toggle() {
//     setState(() {
//       enableSwitch = !enableSwitch;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white70,
//       appBar: AppBar(
//         title: Text("Flutter Animated Custom Switch Demo"),
//         centerTitle: true,
//         automaticallyImplyLeading: false,
//       ),
//       body: GestureDetector(
//         onTap: _toggle,
//         behavior: HitTestBehavior.translucent,
//         child: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: <Widget>[
//               Padding(
//                 padding: const EdgeInsets.only(left: 20.0),
//                 child: Text(
//                   "Enable Custom Switch",
//                   textScaleFactor: 1.3,
//                 ),
//               ),
//               SizedBox(
//                 height: 10,
//               ),
//               CustomSwitch(switched: enableSwitch),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("I Am Free App"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 700.0,
            child: Center(
              child: Column(
                children: [
                  Switch(
                    value: isSwitched,
                    onChanged: (value) {
                      setState(() {
                        isSwitched = value;
                        print(isSwitched);
                      });
                    },
                    activeTrackColor: Colors.lightGreenAccent,
                    activeColor: Colors.green,
                  ),
                  Text("Click This To Access I Am Free App"),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
