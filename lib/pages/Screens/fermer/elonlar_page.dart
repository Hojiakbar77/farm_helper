import 'package:farm_helper/utils/const.dart';
import 'package:flutter/material.dart';

class ElonPage extends StatefulWidget {
  const ElonPage({Key? key}) : super(key: key);

  @override
  State<ElonPage> createState() => ElonPageState();
}

class ElonPageState extends State<ElonPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text("E'lonlar"),
        backgroundColor: colorDeppGreen,
      ),

      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.red[100],
              ),
              width: MediaQuery.of(context).size.width / 1.0,
              height: MediaQuery.of(context).size.height / 5.0,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Qishloq Xo'jaligi vazirlgi tomonidan E'lon",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                        "11.15.2022 Sanada Qishloq xo'jalig vazirligining navbatadagi "
                        "Andijon viloyati fermerlar bilan \nuchrashuvi "
                        " Andijon Hokimlik binosida o'tkaziladi")
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

Widget listTile(context, Icons, String name) {
  return ListTile(
    leading: Icon(Icons),
    title: Text(name),
    onTap: () {
      Navigator.pop(context);
    },
  );
}
