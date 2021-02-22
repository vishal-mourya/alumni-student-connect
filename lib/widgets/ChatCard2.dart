import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class ChatCard2 {
  String imgPath, nameNew , lastMessage ;
  ChatCard2( String imgLoc , String name , String lMess ) {
    imgPath = imgLoc;
    nameNew = name;
    lastMessage = lMess;
  }

  Widget getCard2() {
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

           trailing: Padding(
             padding: const EdgeInsets.only(right : 0.0,top: 12.0),
             child: Column(
               children: [
                 Icon(
                   Icons.message,
                   size: 15.0,
                   color: Colors.black,
                 ),
                 Text(
                     "6:50 pm"
                 ),
               ],
             ),
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
             caption: 'Delete',
             color: Colors.blue,
             icon: Icons.delete,
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
             caption: 'Report',
             color: Colors.indigo,
             icon: Icons.report,
             onTap: () {},
           ),
         ),
       ],
     ),
   );
  }
}