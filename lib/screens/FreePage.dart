import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FreePage extends StatefulWidget {
  @override
  _FreePageState createState() => _FreePageState();
}

class _FreePageState extends State<FreePage> {
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    var height = media.height;
    var width = media.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("I am Free App"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: height * 0.10,
          ),
          Padding(
            padding: EdgeInsets.all(height * 0.2),
          ),
          RaisedButton(
            padding: const EdgeInsets.all(8.0),
            textColor: Colors.white,
            shape: RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(30.0)),
            color: Color(0xFFfa678e),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => FreePage()),
              );
            },
            child: new Text(
              "I Am Free Now",
              style: TextStyle(
                fontSize: 20.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
