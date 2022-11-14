// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';

import '../../../../utils/const.dart';
import '../../../models/elon_model.dart';
import '../fermer/elonlar_page.dart';
import '../fermer/yordam_page.dart';

class ElonPage1 extends StatefulWidget {
  const ElonPage1({Key? key}) : super(key: key);

  @override
  ElonPage1State createState() => ElonPage1State();
}

class ElonPage1State extends State<ElonPage1> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        drawer: Drawer(
          child: ListView(
            // Important: Remove any padding from the ListView.
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                  decoration: const BoxDecoration(
                    color: Colors.green,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        "assets/images/user.png",
                        color: colorWhite,
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text(
                        "Bosimbekov Hojiakbar",
                        style: TextStyle(color: colorWhite),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text(
                        "+9989749467665",
                        style: TextStyle(color: colorWhite),
                      )
                    ],
                  )),
              listTile(context, Icons.filter_alt, 'Filtirlash'),
              listTile(context, Icons.cloud_circle_sharp, 'Ob-Havo'),
              listTile(context, Icons.notifications, 'Eslatma'),
              listTile(context, Icons.settings, 'Sozlamalar'),
            ],
          ),
        ),
        appBar: AppBar(
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 15.0),
              child: Icon(
                Icons.search,
                color: Colors.black,
              ),
            )
          ],
          backgroundColor: Colors.green,
          title: Row(
            mainAxisSize: MainAxisSize.max,
            children: const [
              Text(
                "E'lon",
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          bottom: const TabBar(tabs: [
            Tab(
                icon: Icon(
              Icons.emoji_transportation,
              color: Colors.black,
            )),
            Tab(
                icon: Icon(
              Icons.home_work_rounded,
              color: Colors.black,
            )),
            Tab(
                icon: Icon(
              Icons.person,
              color: Colors.black,
            )),
            Tab(
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.black,
              ),
            )
          ]),
        ),
        body: TabBarView(children: [
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, crossAxisSpacing: 8, mainAxisSpacing: 4),
              itemCount: list.length,
              itemBuilder: (BuildContext context, int index) {
                return items(context, list[index]);
              },
            ),
          )),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisSpacing: 8,
                mainAxisSpacing: 4,
                crossAxisCount: 2,
              ),
              itemCount: mutaxasis.length,
              itemBuilder: (BuildContext context, int index) {
                return item2(context, mutaxasis[index]);
              },
            ),
          )),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, crossAxisSpacing: 8, mainAxisSpacing: 4),
              itemCount: jismoniy.length,
              itemBuilder: (BuildContext context, int index) {
                return items3(context, jismoniy[index]);
              },
            ),
          )),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, crossAxisSpacing: 8, mainAxisSpacing: 4),
              itemCount: mahsulot.length,
              itemBuilder: (BuildContext context, int index) {
                return items4(context, mahsulot[index]);
              },
            ),
          ))
        ]),
      ),
    );
  }
}

class Items extends StatelessWidget {
  String image;
  String text;
  String narx;
  String vaqti;

  Items(
      {Key? key,
      required this.text,
      required this.image,
      required this.narx,
      required this.vaqti})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.45,
      decoration: BoxDecoration(
        color: colorWhite,
        boxShadow: const [
          BoxShadow(
            blurRadius: 4,
            color: colorGrey,
            offset: Offset(0, 2),
          )
        ],
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 12),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: ClipRRect(
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(0),
                      bottomRight: Radius.circular(0),
                      topLeft: Radius.circular(8),
                      topRight: Radius.circular(8),
                    ),
                    child: Image.network(
                      image,
                      width: 100,
                      height: 110,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(8, 4, 0, 0),
                    child: Text(
                      text,
                      style: const TextStyle(
                        color: colorBlack,
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0, 2, 0, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(8, 4, 0, 0),
                    child: Text(
                      narx,
                      style: const TextStyle(
                        color: colorGrey,
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(8, 4, 0, 0),
                    child: Text(
                      vaqti,
                      style: const TextStyle(
                        color: colorGrey,
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
