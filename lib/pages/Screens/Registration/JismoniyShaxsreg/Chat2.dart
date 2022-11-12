import 'package:flutter/material.dart';
class ChatPage2 extends StatefulWidget {
  const ChatPage2({Key? key}) : super(key: key);

  @override
  State<ChatPage2> createState() => _ChatPage2State();
}

class _ChatPage2State extends State<ChatPage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Chat"),
        backgroundColor: Colors.green,
          automaticallyImplyLeading: false
      ),
      body: Column(
        children: [
          Container(
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 8,left: 8),
                  child: Container(

                    height: MediaQuery.of(context).size.height / 15.0,
                    child: Image.asset("assets/images/2202112.png"),
                  ),
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 250,bottom: 5),
                      child: Text("   Aziz ",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500) ,),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Text("Salom sizni sizni ishga qabul qildik            "),
                    )
                  ],
                )

                //Text("Assalom aleykum ish bo'yicha Murojat qilayotgand edim")

              ],
            ),
          ),
          SizedBox(height: 10,),
          Container(
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 8,left: 8),
                  child: Container(

                    height: MediaQuery.of(context).size.height / 15.0,
                    child: Image.asset("assets/images/gamer.png"),
                  ),
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 250,bottom: 5),
                      child: Text("   Xurshid ",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500) ,),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(left: 2.0),
                      child: Text(" Mahsulot sotib olasizmi                                        "),
                    )
                  ],
                )

                //Text("Assalom aleykum ish bo'yicha Murojat qilayotgand edim")

              ],
            ),
          ),
          SizedBox(height: 10,),
          Container(
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 8,left: 8),
                  child: Container(

                    height: MediaQuery.of(context).size.height / 15.0,
                    child: Image.asset("assets/images/woman.png"),
                  ),
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 250,bottom: 5),
                      child: Text(" Aziza ",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500) ,),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(left: 5.0),
                      child: Text("    Kecha mahsulot bo'yicha murojat qilayotgandim"),
                    )
                  ],
                )

                //Text("Assalom aleykum ish bo'yicha Murojat qilayotgand edim")

              ],
            ),
          ),
          SizedBox(height: 10,),
          Container(
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 8,left: 8),
                  child: Container(

                    height: MediaQuery.of(context).size.height / 15.0,
                    child: Image.asset("assets/images/avatar.png"),
                  ),
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 250,bottom: 5),
                      child: Text("  Xilola  ",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500) ,),
                    ),

                    Text("  Sizning mahsulot bizga yoqdi                             ")
                  ],
                )

                //Text("Assalom aleykum ish bo'yicha Murojat qilayotgand edim")

              ],
            ),
          )
        ],
      ),
    );
  }
}
