import 'package:alumnistudentconnect/widgets/ChatCard2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'ChatPage.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    var height = media.height;
    var width = media.width;
    ChatCard2 c1 =
        ChatCard2("assets/images/VishalImage.jpg", "Vishal Mourya", "Hii");
    ChatCard2 c2 =
        ChatCard2("assets/images/VishalImage.jpg", "Vishal Mourya", "Hii");
    ChatCard2 c3 =
        ChatCard2("assets/images/VishalImage.jpg", "Vishal Mourya", "Hii");
    ChatCard2 c4 =
        ChatCard2("assets/images/VishalImage.jpg", "Vishal Mourya", "Hii");
    ChatCard2 c5 =
        ChatCard2("assets/images/VishalImage.jpg", "Vishal Mourya", "Hii");
    ChatCard2 c6 =
        ChatCard2("assets/images/VishalImage.jpg", "Vishal Mourya", "Hii");
    ChatCard2 c7 =
        ChatCard2("assets/images/VishalImage.jpg", "Vishal Mourya", "Hii");

//    AppBar(
//      backgroundColor: Color(0XFF0098ff),
////        excludeHeaderSemantics: true,
//
//    ),

    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: null,
      body: SafeArea(
        child: Column(
          children: [
//            This is for top nav bar
            Container(
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
                            // left: 11.0
                            left: width * (11 / width),
                          ),
                          child: Text(
                            " Edit",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16.0,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: width * (305 / width),
                          ),
                          child: Icon(
                            Icons.edit,
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    // height: 15.0,
                    height: height * (15 / height),
                  ),
                  Container(
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            left: width * (14 / width),
                          ),
                          child: Text(
                            "Conversation",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 22.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    // height: 15.0,
                    height: height * (11 / height),
                  ),
                  Container(
                      color: Colors.white,
                      // height: 50.0,
                      height: height * (50 / height),
                      // width: 360.0,
                      width: width * (360 / width),
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: width * (8 / width),
                        ),
                        child: TextFormField(
                          decoration: const InputDecoration(
                              icon: Icon(Icons.search),
//                          hintText: 'Enter College Name, Department Name, etc.',
                              labelText: 'Enter name of Alumni to search',
                              labelStyle: TextStyle(
                                fontSize: 16.0,
                              )),
                          onSaved: (String value) {
                            // This optional block of code can be used to run
                            // code when the user saves the form.
                          },
                          validator: (String value) {
                            return value.contains('@')
                                ? 'Do not use the @ char.'
                                : null;
                          },
                        ),
                      )),
                  SizedBox(
                    // height: 30.0,
                    height: height * (30 / height),
                  ),
                ],
              ),
            ),

//            This is from Recent chat section
            Container(
              child: Column(
                children: [
                  Row(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(
                          left: width * (28 / width),
                          top: height * (10 / height),
                        ),
                        child: Text(
                          "Recent Chats",
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    // height: 390.0,
                    height: height * (390 / height),
//      style: Theme.of(context).textTheme.bodyText2,
                    child: SingleChildScrollView(
                      child: ConstrainedBox(
                        constraints: BoxConstraints(
//                      minHeight: viewportConstraints.maxHeight,
//                    minHeight: 100.0,
                            ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            Container(
                              alignment: Alignment.center,
                              child: GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => ChatPage(c1)),
                                    );
                                  },
                                  child: c1.getCard2()),
                            ),
//                        SizedBox(height: 10.0,),
                            Container(
                              alignment: Alignment.center,
                              child: GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => ChatPage(c2)),
                                    );
                                  },
                                  child: c2.getCard2()),
                            ),
//                        SizedBox(height: 10.0,),
                            Container(
                              alignment: Alignment.center,
                              child: GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => ChatPage(c3)),
                                    );
                                  },
                                  child: c3.getCard2()),
                            ),
//                        SizedBox(height: 10.0,),
                            Container(
                              alignment: Alignment.center,
                              child: GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => ChatPage(c4)),
                                    );
                                  },
                                  child: c4.getCard2()),
                            ),
//                        SizedBox(height: 10.0,),
                            Container(
                              alignment: Alignment.center,
                              child: GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => ChatPage(c5)),
                                    );
                                  },
                                  child: c5.getCard2()),
                            ),
//                        SizedBox(height: 10.0,),
                            Container(
                              alignment: Alignment.center,
                              child: GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => ChatPage(c6)),
                                    );
                                  },
                                  child: c6.getCard2()),
                            ),
//                        SizedBox(height: 10.0,),
                            Container(
                              alignment: Alignment.center,
                              child: GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => ChatPage(c7)),
                                    );
                                  },
                                  child: c7.getCard2()),
                            ),
//                        SizedBox(height: 10.0,),
                            Container(
                              alignment: Alignment.center,
                              child: GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => ChatPage(c7)),
                                    );
                                  },
                                  child: c7.getCard2()),
                            ),
//                        SizedBox(height: 10.0,),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
