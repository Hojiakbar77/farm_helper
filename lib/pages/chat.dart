import 'package:flutter/material.dart';
class ChatPage extends StatefulWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                      child: Text("    Aziz ",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500) ,),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Text("  Salom e'lon bo'yicha murojat qilayotgan edim"),
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
                      child: Text("     Xurshid ",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500) ,),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(left: 2.0),
                      child: Text("Salom biz sizga o'z xizmatimzni taklif etamiz"),
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
                      child: Text("    Kechagi dalaga qo'yilgan pilalar yaxshi natija berdi"),
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
                      child: Text("    Xilola ",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500) ,),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Text(" Labaratoriya tekshiriuvlari yaxshi natija berdi"),
                    )
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
