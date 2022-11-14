import 'package:farm_helper/utils/const.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../view/common_page/add_page.dart';
import 'xizmat_elon.dart';

import 'xizmat_chat.dart';

class HomePage1 extends StatefulWidget {
  const HomePage1({Key? key}) : super(key: key);

  @override
  State<HomePage1> createState() => _HomePage1State();
}

class _HomePage1State extends State<HomePage1> {
  int _selectedPage = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    ElonPage1(),
    Addpage(),
    ChatPage1(),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_selectedPage),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedPage,
        selectedItemColor: colorWhite,
        unselectedItemColor: colorBlack,
        backgroundColor: Colors.green,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.doc_plaintext, color: colorWhite),
              label: "E'lonlar"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.add_box_outlined,
                color: colorWhite,
              ),
              label: "Add"),
          BottomNavigationBarItem(
              icon: Icon(
                CupertinoIcons.chat_bubble,
                color: colorWhite,
              ),
              label: "Xabarlar"),
        ],
      ),
    );
  }
}
