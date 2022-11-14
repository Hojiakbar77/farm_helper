import 'package:flutter/material.dart';

import '../../../utils/const.dart';

class ChatPage1 extends StatefulWidget {
  const ChatPage1({Key? key}) : super(key: key);

  @override
  State<ChatPage1> createState() => _ChatPage1State();
}

class _ChatPage1State extends State<ChatPage1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text("Chat"),
          backgroundColor: colorDeppGreen,
          automaticallyImplyLeading: false),
      body: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 8, left: 8),
                child: SizedBox(
                  height: MediaQuery.of(context).size.height / 15.0,
                  child: Image.asset("assets/images/2202112.png"),
                ),
              ),
              Column(
                children: const [
                  Padding(
                    padding: EdgeInsets.only(right: 250, bottom: 5),
                    child: Text(
                      "    Aziz ",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 8.0),
                    child:
                        Text("  Salom e'lon bo'yicha murojat qilayotgan edim"),
                  )
                ],
              )

              //Text("Assalom aleykum ish bo'yicha Murojat qilayotgand edim")
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 8, left: 8),
                child: SizedBox(
                  height: MediaQuery.of(context).size.height / 15.0,
                  child: Image.asset("assets/images/gamer.png"),
                ),
              ),
              Column(
                children: const [
                  Padding(
                    padding: EdgeInsets.only(right: 250, bottom: 5),
                    child: Text(
                      "  Xurshid ",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 2.0),
                    child: Text(
                        " Mahsulot sotib olmoqchi edim                             "),
                  )
                ],
              )

              //Text("Assalom aleykum ish bo'yicha Murojat qilayotgand edim")
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 8, left: 8),
                child: SizedBox(
                  height: MediaQuery.of(context).size.height / 15.0,
                  child: Image.asset("assets/images/woman.png"),
                ),
              ),
              Column(
                children: const [
                  Padding(
                    padding: EdgeInsets.only(right: 250, bottom: 5),
                    child: Text(
                      "  Aziza ",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 5.0),
                    child: Text(
                        "  Kecha mahsulot bo'yicha murojat qilayotgandim"),
                  )
                ],
              )

              //Text("Assalom aleykum ish bo'yicha Murojat qilayotgand edim")
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 8, left: 8),
                child: SizedBox(
                  height: MediaQuery.of(context).size.height / 15.0,
                  child: Image.asset("assets/images/avatar.png"),
                ),
              ),
              Column(
                children: const [
                  Padding(
                    padding: EdgeInsets.only(right: 250, bottom: 5),
                    child: Text(
                      "  Xilola  ",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                  ),
                  Text(
                      "  Sizning mahsulot bizga yoqdi                             ")
                ],
              )

              //Text("Assalom aleykum ish bo'yicha Murojat qilayotgand edim")
            ],
          )
        ],
      ),
    );
  }
}
