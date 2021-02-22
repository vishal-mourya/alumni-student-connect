import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChatCard {
  String pathNew,nameNew;
  ChatCard(String imgPath,String name) {
    pathNew = imgPath;
    nameNew = name;
  }

  Container getCard() {
    return Container(
      padding: EdgeInsets.only(top: 10.0,left: 20.0),
      child: Row(
        children: <Widget>[
          Container(
//            width: 40.0,
//            height: 40.0,
//            decoration: BoxDecoration(
////              color: Colors.red,
//              borderRadius: BorderRadius.circular(25.0),
//            ),
            child: CircleAvatar(
                radius: 20,
                backgroundImage: AssetImage("assets/images/VishalImage.jpg"),
            )
          ),

          Padding(
            padding: const EdgeInsets.only(left: 0.0,),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 0.0),
                      child: Text(
                        nameNew,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16.0,
                        ),
                      ),
                    ),

                    Container(
                      padding: EdgeInsets.only(left: 200.0,),
                      child: Icon(
                        Icons.message,
                        size: 15.0,
                      ),
                    )
                  ],
                ),

                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 10.0,top: 3.0),
                      child: Text(
                        "My last message",
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 170.0),
                      child: Text(
                        "6:50 pm"
                      ),
                    )
                  ],
                )
              ],
            ),
          )

        ],
      ),
    );
  }
}