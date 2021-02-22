import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class ExperienceCard {
  String imgPath, nameNew , lastMessage ;
  ExperienceCard( String imgLoc , String name , String lMess ) {
    imgPath = imgLoc;
    nameNew = name;
    lastMessage = lMess;
  }

  Widget getExperienceCard() {
   return Container(
     child: Slidable(
       actionPane: SlidableDrawerActionPane(),
       child: Container(
         decoration: BoxDecoration(color: Colors.white, boxShadow: [
           BoxShadow(
               color: Colors.grey[300], offset: Offset(0, -2))
         ],
         ),

         child: ListTile(
           leading: CircleAvatar(
             radius: 20,
             backgroundImage: AssetImage(imgPath),
           ),

           title: Text(nameNew,
             style: TextStyle(
               fontWeight: FontWeight.bold,
               fontSize: 16.0,
             ),
           ),

           subtitle: Text(lastMessage),
         ),
       ),
       secondaryActions: <Widget>[

         Container(
           decoration: BoxDecoration(color: Colors.white, boxShadow: [
             BoxShadow(
                 color: Colors.grey[300], offset: Offset(0, -2))
           ],
           ),
           child: IconSlideAction(
             caption: 'Edit',
             color: Colors.indigo,
             icon: Icons.edit,
             onTap: () {},
           ),
         ),

         Container(
           decoration: BoxDecoration(color: Colors.white, boxShadow: [
             BoxShadow(
                 color: Colors.grey[300], offset: Offset(0, -2))
           ],
           ),
           child: IconSlideAction(
             caption: 'Delete',
             color: Colors.blue,
             icon: Icons.delete,
             onTap: () {},

           ),
         ),
       ],
     ),
   );
  }
}