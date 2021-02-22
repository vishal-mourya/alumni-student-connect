import 'package:alumnistudentconnect/widgets/ExperienceCard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  ExperienceCard c1 = new ExperienceCard(
      "assets/images/VishalImage.jpg", "Amazon", "1 Jan 2018 - 1 Jan 2020");

  ExperienceCard c2 = new ExperienceCard(
      "assets/images/VishalImage.jpg", "Google", "10 feb 2015 - 15 dec 2017");

  String name = "Vishal Mourya";
  String description =
      "SDE-2 @ Amazon | Founder of Programmers Army | BE-IT From MU";
  String imgPath = "assets/images/VishalImage.jpg";
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    var height = media.height;
    var width = media.width;
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.only(
            top: height * (12 / height),
          ),
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      left: width * (20 / width),
                    ),
                    child: Icon(
                      Icons.arrow_back,
                      size: 25.0,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: width * (300 / width),
                    ),
                    child: Icon(
                      Icons.edit,
                      size: 25.0,
                    ),
                  )
                ],
              ),
              SizedBox(
                // height: 10.0,
                height: height * (10 / height),
              ),

              Padding(
                padding: EdgeInsets.only(
                  left: width * (0 / width),
                ),
                child: CircleAvatar(
                  radius: 80,
                  backgroundImage: AssetImage(imgPath),
                ),
              ),
              SizedBox(
                // height: 10.0,
                height: height * (10 / height),
              ),
              Padding(
                padding: EdgeInsets.only(
                  right: width * (200 / width),
                ),
                child: Text(
                  name,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                  ),
                ),
              ),

              Padding(
                padding: EdgeInsets.only(
                  // left: 37.0,
                  left: width * (37 / width),
                ),
                child: Text(
                  description,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                  ),
                ),
              ),
              SizedBox(
                // height: 10.0,
                height: height * (10 / height),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: width * (10 / width),
                ),
                child: Container(
                  // height: 1.0,
                  height: height * (1 / height),
                  // width: 300.0,
                  width: width * (300 / width),
                  color: Colors.black,
                ),
              ),

              SizedBox(
                // height: 20.0,
                height: height * (20 / height),
              ),

              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      left: width * (10 / width),
                    ),
                    child: Text(
                      "Experience",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                // height: 10.0,
                height: height * (10 / height),
              ),
//              c1.getCard2(),
//              c2.getCard2(),
//
//              c1.getCard2(),

              Container(
                // height: 250.0,
                height: height * (250 / height),
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
                          child: c1.getExperienceCard(),
                        ),
//                        SizedBox(height: 10.0,),
                        Container(
                          alignment: Alignment.center,
                          child: c2.getExperienceCard(),
                        ),
//                        SizedBox(height: 10.0,),
                        Container(
                          alignment: Alignment.center,
                          child: c2.getExperienceCard(),
                        ),
//                        SizedBox(height: 10.0,),
                        Container(
                          alignment: Alignment.center,
                          child: c2.getExperienceCard(),
                        ),
//                        SizedBox(height: 10.0,),

//                        SizedBox(height: 10.0,),
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
