import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'SwitchButton.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
      // DeviceOrientation.landscapeLeft,
      // DeviceOrientation.landscapeRight,
    ]);

    var media = MediaQuery.of(context).size;
    var height = media.height;
    var width = media.width;
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: null,
      body: SafeArea(
        child: Padding(
          // padding: EdgeInsets.all(10.0),
          padding: EdgeInsets.all(height * 0.02),
          child: Container(
            height: height,
            width: width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(10.0),
//              padding: const EdgeInsets.only(top: 40.0,right: 260.0,),
                  child: Container(
                    padding: EdgeInsets.only(
                      // top: 5.0,
                      // 1% height de isko
                      // top: height * (5 / height),
                      // top: height * 0.01,
                      // right: 45.0, //260.0
                      right: width * (45 / width),
                    ),
                    child: Text(
                      "Welcome To our community",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        // fontSize: 26.0,
                        fontSize: height * 0.036,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    // top: height * (5 / height),
                    top: height * 0.001,
                    // right: width * (150 / width),
                    right: width * 0.38,
                  ),
                  child: Container(
                    child: Text(
                      "Signup to continue!",
                      style: TextStyle(
                        // fontSize: 20.0,
                        fontSize: height * 0.03,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      // top: 40.0,
                      // top: height * (40 / height),
                      top: height * 0.03,
                      // left: 20.0,
                      left: width * (20 / width),
                      // right: 20.0,
                      right: width * (20 / width)),
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: "Enter Email",
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25.0),
                        borderSide: BorderSide(
                          color: Color(0xFFfa678e),
                          // width: 10.0,
                          width: width * (10 / width),
                        ),
                      ),
                      //fillColor: Colors.green
                    ),
                    validator: (val) {
                      if (val.length == 0) {
                        return "Email cannot be empty";
                      } else {
                        return null;
                      }
                    },
                    keyboardType: TextInputType.emailAddress,
                    style: new TextStyle(
                      fontFamily: "Poppins",
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      // top: 20.0,
                      // top: height * (20 / height),
                      top: height * 0.02,
                      // left: 20.0,
                      left: width * (20 / width),
                      // right: 20.0,
                      right: width * (20 / width)),
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: "Password",
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25.0),
                        borderSide: BorderSide(),
                      ),
                      //fillColor: Colors.green
                    ),
                    validator: (val) {
                      if (val.length == 0) {
                        return "Password cannot be empty";
                      } else {
                        return null;
                      }
                    },
                    keyboardType: TextInputType.emailAddress,
                    style: new TextStyle(
                      fontFamily: "Poppins",
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      // top: 20.0,
                      // top: height * (20 / height),
                      top: height * 0.02,
                      // left: 20.0,
                      left: width * (20 / width),
                      // right: 20.0,
                      right: width * (20 / width)),
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: "Confirm Password",
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25.0),
                        borderSide: BorderSide(),
                      ),
                      //fillColor: Colors.green
                    ),
                    validator: (val) {
                      if (val.length == 0) {
                        return "Password cannot be empty";
                      } else {
                        return null;
                      }
                    },
                    keyboardType: TextInputType.emailAddress,
                    style: new TextStyle(
                      fontFamily: "Poppins",
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    // left: 240.0,
                    // left: width * (170 / width),
                    left: width * 0.45,
                    // top: 8.0,
                    // top: height * (8 / height),
                    top: height * 0.01,
                  ),
                  child: Text(
                    "Forgot Password?",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      // fontSize: 15.0,
                      fontSize: height * 0.02,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    // top: 30.0,
                    // top: height * (30 / height),
                    top: height * 0.03,
                  ),
                  child: SizedBox(
                    // width: 370.0,
                    width: width * (370 / width),
                    // width: width * ,
                    // height: 40.0,
                    // height: height * (40 / height),
                    height: height * 0.06,
                    child: RaisedButton(
                      padding: const EdgeInsets.all(8.0),
                      textColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(30.0)),
                      color: Color(0xFFfa678e),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Home()),
                        );
                      },
                      child: new Text(
                        "Sign up",
                        style: TextStyle(
                          fontSize: 20.0,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    // top: 30.0,
                    // top: height * (30 / height),
                    top: height * 0.03,
                  ),
                  child: SizedBox(
                    // width: 370.0,
                    width: width * (370 / width),
                    // height: 40.0,
                    // height: height * (40 / height),
                    height: height * 0.06,
                    child: RaisedButton(
                      padding: const EdgeInsets.all(8.0),
                      textColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(30.0)),
                      color: Color(0xFF0b84ed),
                      onPressed: () {},
                      child: Row(
                        // Replace with a Row for horizontal icon + text
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(Icons.email),
                          Padding(
                            padding: EdgeInsets.only(
                              // left: 10.0,
                              left: width * (10 / width),
                            ),
                            child: Text(
                              "Sign up With Facebook",
                              style: TextStyle(
                                fontSize: 20.0,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    // top: 30.0,
                    // top: height * (30 / height),
                    top: height * 0.03,
                  ),
                  child: SizedBox(
                    // width: 370.0,
                    width: width * (370 / width),
                    // height: 40.0,
                    // height: height * (40 / height),
                    height: height * 0.06,
                    child: RaisedButton(
                      padding: const EdgeInsets.all(8.0),
                      textColor: Colors.white,

                      shape: RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(30.0)),
                      color: Color(0xFFe34133),
                      onPressed: () {},

                      child: Row(
                        // Replace with a Row for horizontal icon + text
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(Icons.email),
                          Text(
                            "\t\t\t\tSign up With Google",
                            style: TextStyle(
                              fontSize: 20.0,
                            ),
                          )
                        ],
                      ),

//                  child: new Text("Login With Facebook",
//                    style: TextStyle(
//                      fontSize: 23.0,
//
//                    ),
//                  ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    // top: 30.0
                    // top: height * (30 / height),
                    top: height * 0.03,
                  ),
                  child: GestureDetector(
                    onTap: () {
//                    Navigator.push(
//                      context,
//                      MaterialPageRoute(
//                        builder: (context) => LoginPage()),
//                    );
                      Navigator.pop(context);
                    },
                    child: RichText(
                      text: new TextSpan(
                        // Note: Styles for TextSpans must be explicitly defined.
                        // Child text spans will inherit styles from parent
                        style: new TextStyle(
                          fontSize: 19.0,
                          color: Colors.black,
                        ),
                        children: <TextSpan>[
                          new TextSpan(
                            text: "Already have an account? ",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          new TextSpan(
                            text: "Login",
                            style: new TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0xFFfa678e),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
