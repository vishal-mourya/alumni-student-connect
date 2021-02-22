import 'package:alumnistudentconnect/widgets/ChatCard2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:keyboard_visibility/keyboard_visibility.dart';

class ChatPage extends StatefulWidget {
  ChatCard2 curr;
  ChatPage(ChatCard2 c1) {
    curr = c1;
  }

  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
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
                            padding: const EdgeInsets.only(
                              left: 11.0,
                              top: 5.0,
                            ),
                            child: Icon(
                              Icons.keyboard_arrow_left,
                              color: Colors.white,
                              size: 30.0,
                            )),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 10.0,
                          ),
                          child: CircleAvatar(
                            radius: 20,
                            backgroundImage:
                                AssetImage("assets/images/VishalImage.jpg"),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 10.0),
                          child: Column(
                            children: [
                              Text(
                                "Vishal Mourya",
                                style: TextStyle(
//                              fontWeight: FontWeight.bold,
                                  fontSize: 16.0,
                                  color: Colors.white,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  right: 60.0,
                                ),
                                child: Text(
                                  "online",
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 80.0),
                          child: Icon(
                            Icons.video_call,
                            color: Colors.white,
                            size: 30.0,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 20.0),
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
                    height: 10.0,
                  ),
                ],
              ),
            ),

            Container(
              height: 520.0,
            ),

//            Yeh Text box hai

            Container(
              padding: const EdgeInsets.only(
                left: 10.0,
                right: 10.0,
              ),
              child: AnimatedContainer(
                curve: Curves.easeOut,
                duration: Duration(
                  milliseconds: 400,
                ),
                width: double.infinity,
                height: 60.0,
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
                          maxHeight: 120.0,
                          minHeight: 60.0,
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
                                  top: 18.0,
                                  left: 13.0,
                                  right: 13.0,
                                  bottom: 2.0),
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
