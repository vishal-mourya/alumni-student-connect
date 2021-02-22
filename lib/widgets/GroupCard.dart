import 'package:alumnistudentconnect/screens/GroupPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

String imgPath, nameNew, shortDescription;

class GroupCard extends StatefulWidget {

  GroupCard(String imgLoc, String name, String sd) {
    imgPath = imgLoc;
    nameNew = name;
    shortDescription = sd;
  }
  @override
  _GroupCardState createState() => _GroupCardState();
}

class _GroupCardState extends State<GroupCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Slidable(
        actionPane: SlidableDrawerActionPane(),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(color: Colors.grey[300], offset: Offset(0, -2))
            ],
          ),
          child: ListTile(
            leading: CircleAvatar(
              radius: 20,
              backgroundImage: AssetImage(imgPath),
            ),
            trailing: Padding(
              padding: const EdgeInsets.only(right: 0.0, top: 0.0),
              child: Column(
                children: [
                  RaisedButton(
                    padding: const EdgeInsets.all(8.0),
                    textColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(30.0)),
                    color: Color(0xFFfa678e),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => GroupPage()),
                      );
                    },
                    child: new Text(
                      "Join Group",
                      style: TextStyle(
                        fontSize: 16.0,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            title: Text(
              nameNew,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16.0,
              ),
            ),
            subtitle: Text(shortDescription),
          ),
        ),
        secondaryActions: <Widget>[
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(color: Colors.grey[300], offset: Offset(0, -2))
              ],
            ),
            child: IconSlideAction(
              caption: 'Delete',
              color: Colors.blue,
              icon: Icons.delete,
              onTap: () {},
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(color: Colors.grey[300], offset: Offset(0, -2))
              ],
            ),
            child: IconSlideAction(
              caption: 'Report',
              color: Colors.indigo,
              icon: Icons.report,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => GroupPage()),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
