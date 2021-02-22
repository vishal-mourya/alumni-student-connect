import 'package:alumnistudentconnect/widgets/BottomNavigation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NotificationsPage extends StatefulWidget {
  @override
  _NotificationsPageState createState() => _NotificationsPageState();
}

class _NotificationsPageState extends State<NotificationsPage> {
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    var height = media.height;
    var width = media.width;
    return SafeArea(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          padding: EdgeInsets.only(
            top: height * (170 / height),
          ),
          alignment: Alignment.center,
          child: Icon(
            Icons.notifications_active,
            color: Colors.blue,
            size: 100.0,
          ),
        ),
        SizedBox(
          // height: 10.0,
          height: height * (10 / height),
        ),
        Container(
          child: Text(
            "You have no notifications",
            style: TextStyle(
              fontSize: 25.0,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: 130.0,
          ),
          child: SizedBox(
            // width: 370.0,
            width: width * (370 / width),
            // height: 50.0,
            height: height * (50 / height),
            child: RaisedButton(
              padding: const EdgeInsets.all(8.0),
              textColor: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(30.0)),
              color: Color(0xFFfa678e),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => BottomNavigationScreen()),
                );
              },
              child: new Text(
                "Back to home page",
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
            ),
          ),
        ),
      ],
    ));
  }
}
