import 'package:farm_helper/utils/const.dart';
import 'package:flutter/material.dart';
class Addpage1 extends StatefulWidget {
  const Addpage1({Key? key}) : super(key: key);

  @override
  State<Addpage1> createState() => _Addpage1State();
}

class _Addpage1State extends State<Addpage1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add"),
        backgroundColor: Colors.green,
          automaticallyImplyLeading: false
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 100.0,bottom: 8,right: 90),
            child: Container(
              width: MediaQuery.of(context).size.width / 2.0,
              height: MediaQuery.of(context).size.height / 8.0,
              child: Image.asset("assets/images/image.png"),

            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 100.0,right: 90),
            child: InkWell(
              onTap: (){},
              child: Container(


                width: MediaQuery.of(context).size.width / 2.0,
                height: MediaQuery.of(context).size.height / 15.0,
                color: Colors.green,
                child: Padding(
                  padding: const EdgeInsets.only(left: 55,top: 18),
                  child: Text(" Rasm qo'shish",style: firstNameStyle,),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8,right: 8,top: 10),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  border: Border.all(width: 2, color: colorGrey)),
              child: TextField(
                maxLines: 3,
                style: TextStyle(color: Colors.white),
                cursorColor: colorGrey,
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 3, color: colorBlack),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 100.0,right: 90,top: 10),
            child: InkWell(
              onTap: (){},
              child: Container(


                width: MediaQuery.of(context).size.width / 2.0,
                height: MediaQuery.of(context).size.height / 15.0,
                color: Colors.green,
                child: Padding(
                  padding: const EdgeInsets.only(left: 70,top: 18),
                  child: Text(" Yuklash",style: firstNameStyle,),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
