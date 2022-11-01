import 'package:farm_helper/pages/Plan.dart';
import 'package:farm_helper/pages/add_page.dart';
import 'package:farm_helper/pages/chat.dart';
import 'package:farm_helper/pages/elonlar.dart';
import 'package:farm_helper/pages/yordam.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/const.dart';
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
    Helppage()
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedPage = index;
    });
  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(



        title:  Text(_selectedPage==0?"E'lonlar":
        (_selectedPage==1?"Hisobot":(_selectedPage==2?"Add":
        (_selectedPage==3?"Chat":"Yordam"))),style: TextStyle(color: colorWhite)),
        backgroundColor: Colors.green,



      ),
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


