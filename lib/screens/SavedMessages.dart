import 'package:alumnistudentconnect/widgets/ChatCard2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SavedMessages extends StatefulWidget {
  @override
  _SavedMessagesState createState() => _SavedMessagesState();
}

class _SavedMessagesState extends State<SavedMessages> {
  ChatCard2 c1 = ChatCard2("assets/images/VishalImage.jpg", "ReactJs",
      "Refer this course, it is best");
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    var height = media.height;
    var width = media.width;
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomPadding: false,
        body: Column(
          children: [
//        This is for top nav + search bar
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
                    "Search for your saved items,chats,etc",
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
                              labelText: 'Type anything to search',
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
                    height: height * (30 / height),
                  ),
                ],
              ),
            ),

            c1.getCard2(),
            c1.getCard2(),
            c1.getCard2(),
            c1.getCard2(),
          ],
        ),
      ),
    );
  }
}
