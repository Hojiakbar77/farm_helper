
import 'package:farm_helper/pages/Screens/fermer/yordam_page.dart';

import 'package:farm_helper/view/common_page/add_page.dart';



import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../utils/const.dart';

import 'chat_page.dart';
import 'elonlar_page.dart';
import 'plan_page.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedPage= 0;
  static const List<Widget> _widgetOptions = <Widget>[
    HelpPage(),
    Planpage(),
    Addpage(),
    ChatPage(),
    ElonPage()
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
        backgroundColor: colorDeppGreen,



        onTap: _onItemTapped,


        items: const[
          BottomNavigationBarItem(icon: Icon(Icons.help,color: colorWhite,), label: "Yordam" ),
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.doc_plaintext,color: colorWhite), label: "Hisobot" ),
          BottomNavigationBarItem(icon: Icon(Icons.add_box_outlined,color: colorWhite,), label: "Add" ),
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.chat_bubble,color: colorWhite,), label: "Xabarlar" ),
          BottomNavigationBarItem(icon: Icon(Icons.notifications,color: colorWhite,), label: "E'lonlar" , ),

        ],


      ),

    );
  }
}


