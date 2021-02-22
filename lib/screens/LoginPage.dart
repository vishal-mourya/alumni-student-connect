import 'package:alumnistudentconnect/widgets/BottomNavigation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'SignUp.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    //This will fix the orientation of our screen
    //Note: always place it just below build method
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
      // DeviceOrientation.landscapeLeft,
      // DeviceOrientation.landscapeRight,
    ]);

    var media = MediaQuery.of(context).size;
    // print(media.height);
    // print(media.width);
    // double defaultScreenWidth = 400.0;
    double defaultScreenWidth = media.width;
    // double defaultScreenHeight = 810.0;
    double defaultScreenHeight = media.height;
    ScreenUtil.instance = ScreenUtil(
      width: defaultScreenWidth,
      height: defaultScreenHeight,
      allowFontScaling: true,
    )..init(context);

    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: null,
      body: SafeArea(
        child: Padding(
          // padding: EdgeInsets.all(10.0),

          padding: EdgeInsets.all(media.height * 0.01),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(
                  // ScreenUtil.instance.setWidth(10.0),
                  ScreenUtil.instance.setWidth(media.height * 0.01),
                ),
//              padding: const EdgeInsets.only(top: 40.0,right: 260.0,),
                child: Container(
                  padding: EdgeInsets.only(
                    // top: 5.0,
                    top: media.height * 0.006,
                    // right: 175.0, //260.0
                    right: media.width * 0.47,
                  ),
                  child: Text(
                    "Welcome back,",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 26.0,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  // top: 5.0,
                  top: media.height * 0.006,
                  // right: 200.0,
                  right: media.width * 0.5,
                ),
                child: Container(
                  child: Text(
                    "Login to continue!",
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  // top: 70.0,
                  top: media.height * 0.09,
                  // left: 20.0,
                  left: media.width * 0.05,
                  // right: 20.0,
                  right: media.width * 0.05,
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: "Enter Email",
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25.0),
                      borderSide: BorderSide(
                        color: Color(0xFFfa678e),
                        width: 10.0,
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
                  top: media.height * 0.03,
                  // left: 20.0,
                  left: media.width * 0.05,
                  // right: 20.0,
                  right: media.width * 0.05,
                ),
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
                  // left: 240.0,
                  left: media.width * 0.6,
                  // top: 8.0,
                  top: media.height * 0.01,
                ),
                child: Text(
                  "Forgot Password?",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15.0,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  // top: 30.0,
                  top: media.height * (30 / 759),
                ),
                child: SizedBox(
                  // width: 370.0,
                  width: media.width * (340 / 392),
                  // height: 50.0,
                  height: media.height * (50 / 759),
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
                      "Login",
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
                  top: media.height * (30 / media.height),
                ),
                child: SizedBox(
                  // width: 370.0,
                  width: media.width * (370 / media.width),
                  // height: 50.0,
                  height: media.height * (50 / media.height),
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
                              left: media.width * (10 / media.width)),
                          child: Text(
                            "Login With Facebook",
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
                  top: media.height * (30 / media.height),
                ),
                child: SizedBox(
                  // width: 370.0,
                  width: media.width * (370 / media.width),
                  // height: 50.0,
                  height: media.height * (50 / media.height),
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
                          "\t\t\t\tLogin With Google",
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
                  top: media.height * (30 / media.height),
                ),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SignUp()),
                    );
                  },
                  child: RichText(
                    text: new TextSpan(
                      // Note: Styles for TextSpans must be explicitly defined.
                      // Child text spans will inherit styles from parent
                      style: new TextStyle(
                        fontSize: 17.0,
                        color: Colors.black,
                      ),
                      children: <TextSpan>[
                        new TextSpan(
                          text: "I'm a new user,  ",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        new TextSpan(
                          text: "Sign Up",
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
    );
  }
}
