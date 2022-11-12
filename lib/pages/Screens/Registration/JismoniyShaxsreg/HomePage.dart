
import 'package:farm_helper/pages/Screens/Registration/JismoniyShaxsreg/Chat2.dart';
import 'package:farm_helper/pages/Screens/Registration/JismoniyShaxsreg/Elon.dart';
import 'package:farm_helper/pages/Screens/Registration/XizmatReg/Elon.dart';


import 'package:farm_helper/utils/const.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';




class HomePage2 extends StatefulWidget {
  const HomePage2({Key? key}) : super(key: key);

  @override
  State<HomePage2> createState() => _HomePage2State();
}

class _HomePage2State extends State<HomePage2> {
  int _selectedPage= 0;
  static const List<Widget> _widgetOptions = <Widget>[
    ElonPage1(),

    ChatPage2(),
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

          BottomNavigationBarItem(icon: Icon(CupertinoIcons.doc_plaintext,color: colorWhite), label: "E'lonlar" ),

          BottomNavigationBarItem(icon: Icon(CupertinoIcons.chat_bubble,color: colorWhite,), label: "Xabarlar" ),
        ],


      ),

    );
  }
}


