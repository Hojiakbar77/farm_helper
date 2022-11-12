// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';

import '../../../../utils/const.dart';
import 'details.dart';

class ElonPage1 extends StatefulWidget {
  const ElonPage1({Key? key}) : super(key: key);

  @override
  _ElonPage1State createState() => _ElonPage1State();
}

class _ElonPage1State extends State<ElonPage1> {
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
                  decoration: BoxDecoration(
                    color: Colors.green,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset("assets/images/user.png",color: colorWhite,),
                      SizedBox(height: 5,),
                      Text("Bosimbekov Hojiakbar",style: TextStyle(color: colorWhite),),
                      SizedBox(height: 5,),
                      Text("+9989749467665",style: TextStyle(color: colorWhite),)
                    ],
                  )
              ),

              ListTile(
                leading: Icon(
                  Icons.cloud_circle_sharp,
                ),
                title: const Text('Ob-Havo'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(
                  Icons.notifications,
                ),
                title: const Text('Eslatma'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(
                  Icons.settings,
                ),
                title: const Text('Sozlamalar'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
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
            children: [

              const Text(
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
        body: TabBarView(
          children: [
            Expanded(
                child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Items(
                        image:
                            "https://cdn.arstechnica.net/wp-content/uploads/2022/06/AmogyTractorTestBryan-Banducci-1.jpg",
                        narx: '500 ming',
                        text: 'Traktor xizmatlari',
                        vaqti: 'Gektariga',
                      ),
                      Items(
                          text: "Yer haydash hizmatlari",
                          image:
                              "https://3.imimg.com/data3/VW/PP/GLADMIN-68945/walking-tractor-500x500.jpg",
                          narx: "50 ming ",
                          vaqti: "Sotixiga")
                    ],
                  )
                ],
              ),
            )),
            Expanded(
                child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Items(
                          text: "Agranom",
                          image:
                              "https://www.profguide.io/images/article/a/4/tAMigK7qqm.jpg",
                          narx: "200 ming",
                          vaqti: "2 soat"),
                      Items(
                          text: "Mirobchi",
                          image:
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTniRIp41NxM0i9-B9t2_zWbhN6FkBXryfXmw&usqp=CAU",
                          narx: "3 mln",
                          vaqti: "Butun ishga")
                    ],
                  ),
                )
              ],
            )),
            Expanded(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Items(
                            text: "Meva teruvchi",
                            image:
                                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQGWtdTy4rrym8RpaGnLjYAXzATc_VYK1sFyg&usqp=CAU",
                            narx: '2 ming',
                            vaqti: "kilosiga"),
                        Items(
                            text: "Paxta chopuvchi",
                            image:
                                "https://storage.kun.uz/source/7/sawiDLO1OgY2ngiSgxIlF5xnkdr-T-GF.jpg",
                            narx: "10 ming",
                            vaqti: "egatiga")
                      ],
                    ),
                  )
                ],
              ),
            ),
            Expanded(
                child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Items(
                          text: "Pichan",
                          image:
                              "https://img.bisyor.uz/web/uploads/items/beda-press-sotiladi-eng-arzon-narx-sifatiga-kafolat-beramiz-234262-1z-1621706526.jpg",
                          narx: "30 ming",
                          vaqti: "donasi"),
                      Items(
                          text: "Somon",
                          image:
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT96l9QoLcWatQ1d_wkltamZppTtRte6ySs4A5K_f93fm9kQxcvG9ZGu3yVqkvMOJuEdXc&usqp=CAU",
                          narx: "50 ming ",
                          vaqti: "rulon"),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0, right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Items(
                          text: "Sut",
                          image:
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ8HZywi6HmxXvnKVHv6RDZLT8uDCtHMLgQpg&usqp=CAU",
                          narx: "5ming ",
                          vaqti: "litri"),
                      GestureDetector(
                        onTap: () async {
                          await Navigator.of(context)
                              .push(MaterialPageRoute(builder: (_) => Some()));
                        },
                        child: Items(
                            text: "Ammafos",
                            image:
                                "http://shop.uzex.uz/files/offers/pic201202160933013_1.jpg",
                            narx: "5ming",
                            vaqti: "kilosiga"),
                      )
                    ],
                  ),
                )
              ],
            ))
          ],
        ),
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
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(8, 4, 0, 0),
                    child: Text(
                      narx,
                      style: const TextStyle(
                        color: Color(0xFF95A1AC),
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
    );
  }
}
