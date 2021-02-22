import 'package:alumnistudentconnect/widgets/GroupCard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'GroupPage.dart';

class Explore extends StatefulWidget {
  @override
  _ExploreState createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    var height = media.height;
    var width = media.width;
    GroupCard c1 = GroupCard("assets/images/VishalImage.jpg",
        "Flutter Community", "This is for flutter");
    GroupCard c2 = GroupCard("assets/images/VishalImage.jpg",
        "ReactJs developers", "This is for ReactJs");
    GroupCard c3 =
        GroupCard("assets/images/VishalImage.jpg", "Vishal Mourya", "Hii");
    GroupCard c4 =
        GroupCard("assets/images/VishalImage.jpg", "Vishal Mourya", "Hii");
    GroupCard c5 =
        GroupCard("assets/images/VishalImage.jpg", "Vishal Mourya", "Hii");
    GroupCard c6 =
        GroupCard("assets/images/VishalImage.jpg", "Vishal Mourya", "Hii");
    GroupCard c7 =
        GroupCard("assets/images/VishalImage.jpg", "Vishal Mourya", "Hii");

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
//            This is for top nav + search bar
            Container(
              // width: 430.0,
              width: width * (430 / width),
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
                  Text(
                    "Search for groups and grow your reach",
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
//                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    // height: 15.0,
                    height: height * (15 / height),
                  ),
                  Container(
                      color: Colors.white,
                      // height: 50.0,
                      height: height * (50 / height),
                      // width: 350.0,
                      width: width * (350 / width),
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: width * (8 / width),
                        ),
                        child: TextFormField(
                          decoration: const InputDecoration(
                              icon: Icon(Icons.search),
//                          hintText: 'Enter College Name, Department Name, etc.',
                              labelText: 'Enter name of Group/Alumni to search',
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

//            This is after navbar section
            SizedBox(
              // height: 10.0,
              height: height * (10 / height),
            ),
            Container(
              child: Column(
                children: [
//                  Row(
//                    children: <Widget>[
//                      Padding(
//                        padding: const EdgeInsets.only(left : 28.0, top: 10.0),
////                        child: Text("Recent searched Groups",
////                          style: TextStyle(
////                            fontSize: 16.0,
////                            fontWeight: FontWeight.bold,
////                          ),
//                        ),
//                      ),
//                    ],
//                  ),

                  Container(
                    // height: 450.0,
                    height: height * (450 / height),
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
                                        builder: (context) => GroupPage()),
                                  );
                                },
                                child: c1,
                              ),
                            ),
//                        SizedBox(height: 10.0,),
                            Container(
                              alignment: Alignment.center,
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => GroupPage()),
                                  );
                                },
                                child: c2,
                              ),
                            ),
//                        SizedBox(height: 10.0,),
                            Container(
                              alignment: Alignment.center,
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => GroupPage()),
                                  );
                                },
                                child: c3,
                              ),
                            ),
//                        SizedBox(height: 10.0,),
                            Container(
                              alignment: Alignment.center,
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => GroupPage()),
                                  );
                                },
                                child: c4,
                              ),
                            ),
//                        SizedBox(height: 10.0,),
                            Container(
                              alignment: Alignment.center,
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => GroupPage()),
                                  );
                                },
                                child: c5,
                              ),
                            ),
//                        SizedBox(height: 10.0,),
                            Container(
                              alignment: Alignment.center,
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => GroupPage()),
                                  );
                                },
                                child: c6,
                              ),
                            ),
//                        SizedBox(height: 10.0,),
                            Container(
                              alignment: Alignment.center,
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => GroupPage()),
                                  );
                                },
                                child: c7,
                              ),
                            ),
//                        SizedBox(height: 10.0,),
                            Container(
                              alignment: Alignment.center,
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => GroupPage()),
                                  );
                                },
                                child: c7,
                              ),
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
