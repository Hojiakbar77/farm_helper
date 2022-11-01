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
