import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:keyboard_visibility/keyboard_visibility.dart';

class GroupPage extends StatefulWidget {
  @override
  _GroupPageState createState() => _GroupPageState();
}

class _GroupPageState extends State<GroupPage> {
  Alignment childAlignment = Alignment.bottomCenter;
  @override
  void initState() {
    KeyboardVisibilityNotification().addNewListener(
      onChange: (bool visible) {
        // Add state updating code
        setState(() {
          childAlignment = visible ? Alignment.center : Alignment.bottomCenter;
        });
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    var height = media.height;
    var width = media.width;
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: null,
      body: SafeArea(
        child: Column(
          children: [
//                  This is App bar with call and video icons
            Container(
//              height: 200.0,
              decoration: BoxDecoration(
                color: Color(0XFF0098ff),
                borderRadius: BorderRadius.only(
//                      topRight: Radius.circular(40.0),
                  bottomRight: Radius.circular(40.0),
//                  topLeft: Radius.circular(40.0),
                  bottomLeft: Radius.circular(40.0),
                ),
              ),

              padding: EdgeInsets.all(10.0),
              child: Column(
                children: <Widget>[
                  Container(
                    child: Row(
                      children: [
                        Padding(
                            padding: EdgeInsets.only(
                              // left: 11.0,
                              left: width * (11 / width),
                              // top: 5.0,
                              top: height * (5 / height),
                            ),
                            child: Icon(
                              Icons.keyboard_arrow_left,
                              color: Colors.white,
                              size: 30.0,
                            )),
                        Padding(
                          padding: EdgeInsets.only(
                            // left: 10.0,
                            left: width * (10 / width),
                          ),
                          child: CircleAvatar(
                            radius: 20,
                            backgroundImage:
                                AssetImage("assets/images/VishalImage.jpg"),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: width * (0 / width),
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                  // right: 50.0,
                                  right: width * (50 / width),
                                ),
                                child: Text(
                                  "Flutter Crew",
                                  style: TextStyle(
//                              fontWeight: FontWeight.bold,
                                    fontSize: 16.0,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  // left: 10.0,
                                  left: width * (10 / width),
                                ),
                                child: Text(
                                  "120 members, 50 online",
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: width * (40 / width),
                          ),
                          child: Icon(
                            Icons.video_call,
                            color: Colors.white,
                            size: 30.0,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: width * (20 / width),
                          ),
                          child: Icon(
                            Icons.call,
                            color: Colors.white,
                            size: 30.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    // height: 10.0,
                    height: height * (10 / height),
                  ),
                ],
              ),
            ),

            Container(
              // height: 520.0,
              height: height * (520 / height),
            ),

//            Yeh Text box hai

            Container(
              padding: EdgeInsets.only(
                // left: 10.0,
                left: width * (10 / width),
                // right: 10.0,
                right: width * (10 / width),
              ),
              child: AnimatedContainer(
                curve: Curves.easeOut,
                duration: Duration(
                  milliseconds: 400,
                ),
                width: double.infinity,
                // height: 60.0,
                height: height * (60 / height),
//              padding: const EdgeInsets.all(20),
                alignment: childAlignment,
                child: Row(
                  children: [
                    Icon(
                      Icons.add_circle,
                      color: Colors.blue,
                      size: 30.0,
                    ),
                    Flexible(
                      child: new ConstrainedBox(
                        constraints: new BoxConstraints(
                          // maxHeight: 120.0,
                          maxHeight: height * (120 / height),
                          // minHeight: 60.0,
                          minHeight: height * (60 / height),

//                        minWidth: 100.0,
//                        maxWidth: 100.0,
//                        minHeight: 25.0,
//                        maxHeight: 135.0,
                        ),
                        child: new Scrollbar(
                          child: new TextField(
                            cursorColor: Colors.blue,
                            keyboardType: TextInputType.multiline,
                            maxLines: null,
//                      controller: tc,
//                      _handleSubmitted : null,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.only(
                                // top: 18.0,
                                top: height * (18 / height),
                                // left: 13.0,
                                left: width * (13 / width),
                                // right: 13.0,
                                right: width * (13 / width),
                                // bottom: 2.0
                                bottom: height * (2 / height),
                              ),
                              hintText: "Type your message",
                              hintStyle: TextStyle(
                                color: Colors.grey,
                                fontSize: 18.0,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Icon(
                      Icons.send,
                      color: Colors.blue,
                      size: 30.0,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
