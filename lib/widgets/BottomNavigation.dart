import 'package:alumnistudentconnect/screens/Explore.dart';
import 'package:alumnistudentconnect/screens/HomePage.dart';
import 'package:alumnistudentconnect/screens/NotificationsPage.dart';
import 'package:alumnistudentconnect/screens/Profile.dart';
import 'package:alumnistudentconnect/screens/SavedMessages.dart';
import 'package:flutter/material.dart';
//import 'package:screens/Explore.dart';

class BottomNavigationScreen extends StatefulWidget {
  @override
  _BottomNavigationScreenState createState() => _BottomNavigationScreenState();
}

class _BottomNavigationScreenState extends State<BottomNavigationScreen> {
  List<Map<String, Object>> _pages;
  int _selectedPageIndex = 0;

  @override
  void initState() {
    _pages = [
      {
        'page': HomePage(),
        'title': 'Home',
      },
      {
        'page': NotificationsPage(),
        'title': 'Notifications',
      },
      {
        'page': Explore(),
        'title': 'Explore-community',
      },
      {
        'page': SavedMessages(),
        'title': 'Saved-Messages',
      },
      {
        'page': Profile(),
        'title': 'Profile',
      },
    ];
    super.initState();
  }

  void _selectedPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      resizeToAvoidBottomPadding: false,
      body: _pages[_selectedPageIndex]['page'], // here we are accessing the list of pages
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectedPage,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.blue,
        currentIndex: _selectedPageIndex,
        items: [

          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text("Home"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications_none),
            title: Text("Notifications"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.supervised_user_circle),
            title: Text("Community"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.save),
            title: Text("Personal Space"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            title: Text("Profile"),
          ),
        ],
      ),
    );
  }
}

//IconButton(
//icon: Icon(
//Icons.notifications_none,
//color: Colors.black,
//),
//onPressed: () {},
//)