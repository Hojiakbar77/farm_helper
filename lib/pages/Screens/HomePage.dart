import 'package:farm_helper/pages/Screens/Plan.dart';
import 'package:farm_helper/pages/Screens/add_page.dart';
import 'package:farm_helper/pages/Screens/chat.dart';
import 'package:farm_helper/pages/Screens/elonlar.dart';
import 'package:farm_helper/pages/Screens/yordam.dart';


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../utils/const.dart';
import 'Registration/XizmatReg/Elon.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedPage= 0;
  static const List<Widget> _widgetOptions = <Widget>[
    ElonPage(),
    Planpage(),
    Addpage(),
    ChatPage(),
    HelpPage()
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedPage = index;
    });
  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(


      body:_widgetOptions.elementAt(_selectedPage),
      bottomNavigationBar:  BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedPage,
        selectedItemColor: colorWhite,
        unselectedItemColor: colorBlack,
        backgroundColor: Colors.green,



        onTap: _onItemTapped,


        items: const[
          BottomNavigationBarItem(icon: Icon(Icons.notifications,color: colorWhite,), label: "E'lonlar" , ),
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.doc_plaintext,color: colorWhite), label: "Hisobot" ),
          BottomNavigationBarItem(icon: Icon(Icons.add_box_outlined,color: colorWhite,), label: "Add" ),
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.chat_bubble,color: colorWhite,), label: "Xabarlar" ),
          BottomNavigationBarItem(icon: Icon(Icons.help,color: colorWhite,), label: "Yordam" )
        ],


      ),

    );
  }
}


