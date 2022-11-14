// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:farm_helper/utils/const.dart';
import 'package:flutter/material.dart';

import '../../../../models/elon_model.dart';
import '../../../../view/pages/details_page/texnik_details.dart';
import '../../../../view/pages/details_page/jismoniy_details.dart';
import '../../../../view/pages/details_page/mahsulot_detail.dart';
import '../../../../view/pages/details_page/mutaxasis_details.dart';
import 'elonlar_page.dart';




class HelpPage extends StatefulWidget {
  const HelpPage({Key? key}) : super(key: key);

  @override
  HelpPageState createState() => HelpPageState();
}

class HelpPageState extends State<HelpPage> {
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
                    color: colorDeppGreen,
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
              listTile(context, Icons.calculate, 'Calculator'),
              listTile(context, Icons.cloud_circle_sharp, 'Ob-Havo'),
              listTile(context, Icons.notifications, 'Eslatma'),
              listTile(context, Icons.insert_drive_file_outlined,
                  "Ekinlar to'grisida ma'lumotnoma"),
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
                color: colorBlack,
              ),
            )
          ],
          backgroundColor: colorDeppGreen,
          title: Row(
            mainAxisSize: MainAxisSize.max,
            children: const [

              Text(
                "Yordam",
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 18,
                  color: colorWhite,
                ),
              ),
            ],
          ),
          bottom: const TabBar(tabs: [
            Tab(
                icon: Icon(
                  Icons.emoji_transportation,
                  color: colorBlack,
                )),
            Tab(
                icon: Icon(
                  Icons.home_work_rounded,
                  color: colorBlack,
                )),
            Tab(
                icon: Icon(
                  Icons.person,
                  color: colorBlack,
                )),
            Tab(
              icon: Icon(
                Icons.shopping_cart,
                color: colorBlack,
              ),
            )
          ]),
        ),

        body: TabBarView(
          children: [
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
                child:
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child:  GridView.builder(
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
                    )
                  ),
            Expanded(
              child:
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child:  GridView.builder(
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 8,
                          mainAxisSpacing: 4),
                      itemCount: jismoniy.length,
                      itemBuilder: (BuildContext context, int index) {
                              return items3(context, jismoniy[index]);
                      },
                    ),
                  )

            ),
            Expanded(
                child:
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child:GridView.builder(
    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
    crossAxisCount: 2, crossAxisSpacing: 8, mainAxisSpacing: 4),
    itemCount: mahsulot.length,
    itemBuilder: (BuildContext context, int index) {
    return items4(context, mahsulot[index]);
    },
    ),
                  )
    )
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
            color: colorBlack,
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

Widget items(context, elonlar) {
  return GestureDetector(
    onTap: () {
      Navigator.of(context).push(
          MaterialPageRoute(builder: (_) => DetailsPage(elonlar: elonlar)));
    },
    child: Container(
      width: 300,
      height: 180,
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
            Expanded(
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(0),
                  bottomRight: Radius.circular(0),
                  topLeft: Radius.circular(8),
                  topRight: Radius.circular(8),
                ),
                child: Image.asset(
                  elonlar.imageUrl,
                  width: double.infinity,
                  height: 120,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(8, 4, 0, 0),
                    child: Text(
                      elonlar.service,
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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(8, 4, 8, 0),
                    child: Text(
                      elonlar.price,
                      style: const TextStyle(
                        color: colorGrey,
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(8, 4, 8, 0),
                    child: Text(
                      elonlar.time,
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
    ),
  );
}

Widget item2(context, mutaxasis) {
  return GestureDetector(
    onTap: () {
      Navigator.of(context).push(MaterialPageRoute(
          builder: (_) => MutaxasisDetail(mutaxasis: mutaxasis)));
    },
    child: Container(
      width: MediaQuery.of(context).size.width * 0.45,

      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: const [
          BoxShadow(
            blurRadius: 4,
            color: Color(0x3600000F),
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
            Expanded(
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(0),
                  bottomRight: Radius.circular(0),
                  topLeft: Radius.circular(8),
                  topRight: Radius.circular(8),
                ),
                child: Image.asset(
                  mutaxasis.imageUrl,
                  width: double.infinity,
                  height: 120,
                  fit: BoxFit.cover,

                ),
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(8, 4, 0, 0),
                    child: Text(
                      mutaxasis.service,
                      style: const TextStyle(
                        color: Color(0xFF090F13),
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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(8, 4, 8, 0),
                    child: Text(
                      mutaxasis.price,
                      style: const TextStyle(
                        color: Color(0xFF95A1AC),
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(8, 4, 8, 0),
                    child: Text(
                      mutaxasis.time,
                      style: const TextStyle(
                        color: Color(0xFF95A1AC),
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
    ),
  );
}

Widget items3(context, jismoniy) {
  return GestureDetector(
    onTap: () {
      Navigator.of(context).push(MaterialPageRoute(
          builder: (_) => JismoniyDetails(jismoniy: jismoniy)));
    },
    child: Container(
      width: MediaQuery.of(context).size.width * 0.45,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: const [
          BoxShadow(
            blurRadius: 4,
            color: Color(0x3600000F),
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
            Expanded(
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(0),
                  bottomRight: Radius.circular(0),
                  topLeft: Radius.circular(8),
                  topRight: Radius.circular(8),
                ),
                child: Image.asset(
                  jismoniy.imageUrl,
                  width: double.infinity,
                  height: 130,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(8, 4, 0, 0),
                    child: Text(
                      jismoniy.service,
                      style: const TextStyle(
                        color: Color(0xFF090F13),
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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(8, 4, 8, 0),
                    child: Text(
                      jismoniy.price,
                      style: const TextStyle(
                        color: Color(0xFF95A1AC),
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(8, 4, 8, 0),
                    child: Text(
                      jismoniy.time,
                      style: const TextStyle(
                        color: Color(0xFF95A1AC),
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
    ),
  );
}

Widget items4(context, mahsulot) {
  return GestureDetector(
    onTap: () {
      Navigator.of(context).push(MaterialPageRoute(
          builder: (_) => MahsulotDetails(mahsulot: mahsulot)));
    },
    child: Container(
      height: 400,
      width: MediaQuery.of(context).size.width * 0.45,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: const [
          BoxShadow(
            blurRadius: 4,
            color: Color(0x3600000F),
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
            Expanded(
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(0),
                  bottomRight: Radius.circular(0),
                  topLeft: Radius.circular(8),
                  topRight: Radius.circular(8),
                ),
                child: Image.asset(
                  mahsulot.imageUrl,
                  width: double.infinity,
                  height: 130,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(8, 4, 0, 0),
                    child: Text(
                      mahsulot.service,
                      style: const TextStyle(
                        color: Color(0xFF090F13),
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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(8, 4, 8, 0),
                    child: Text(
                      mahsulot.price,
                      style: const TextStyle(
                        color: Color(0xFF95A1AC),
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(8, 4, 8, 0),
                    child: Text(
                      mahsulot.time,
                      style: const TextStyle(
                        color: Color(0xFF95A1AC),
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
    ),
  );
}
