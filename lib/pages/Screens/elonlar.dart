import 'package:farm_helper/utils/const.dart';
import 'package:flutter/material.dart';
class ElonPage extends StatefulWidget {
  const ElonPage({Key? key}) : super(key: key);

  @override
  State<ElonPage> createState() => _ElonPageState();
}

class _ElonPageState extends State<ElonPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("E'lonlar"),
        backgroundColor: Colors.green,
      ),
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
                Icons.filter_alt_outlined,
              ),
              title: const Text('Filtirlash'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(
                Icons.calculate,
              ),
              title: const Text('Calculator'),
              onTap: () {
                Navigator.pop(context);
              },
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
                Icons.insert_drive_file_outlined,
              ),
              title: const Text("Ekinlar to'grisida ma'lumotnoma"),
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

      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: MediaQuery.of(context).size.width / 1.0,
              height: MediaQuery.of(context).size.height / 5.0,
              color: Colors.red[100],
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Qishloq Xo'jaligi vazirlgi tomonidan E'lon",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w600),),
SizedBox(height: 5,),
                    Text(" 11.15.2022 Sanada Qishloq xo'jalig vazirligining navbatadagi \n"
                        " Andijon viloyati fermerlar bilan uchrashuvi "
                        " Andijon Hokimlik \n binosida o'tkaziladi")
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
