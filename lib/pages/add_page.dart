import 'package:farm_helper/utils/const.dart';
import 'package:flutter/material.dart';
class Addpage extends StatefulWidget {
  const Addpage({Key? key}) : super(key: key);

  @override
  State<Addpage> createState() => _AddpageState();
}

class _AddpageState extends State<Addpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
