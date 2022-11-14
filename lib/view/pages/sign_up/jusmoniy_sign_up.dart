import 'package:farm_helper/view/pages/passcode/passcode_jismoniy.dart';
import 'package:farm_helper/utils/const.dart';
import 'package:flutter/material.dart';

import '../registration/fermer_reg.dart';

class Signin1 extends StatefulWidget {
  const Signin1({Key? key}) : super(key: key);

  @override
  Signin1State createState() => Signin1State();
}

class Signin1State extends State<Signin1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
            child: Text(
          ' Sign In ',
        )),
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          //crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(50),
              child: Column(
                children: [
                  regName("Telefon Raqam"),
                  const SizedBox(
                    height: 10,
                  ),
                  texFieldItem(),
                  const SizedBox(
                    height: 10,
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Container(
                    color: colorWhite,
                    height: 50,
                    width: 320,
                    child: ElevatedButton(
                      style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(18.0),
                                      side: const BorderSide(
                                          color: colorDeppGreen)))),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const VerificationScreen2()),
                        );
                        // Respond to button press
                      },
                      child: const Text(
                        'Kirish',
                        style: TextStyle(color: colorWhite),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const SizedBox(
                    height: 170,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text("Sizda hali account yoqmi?",
                          style: TextStyle(color: colorGrey)),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Register",
                        style: TextStyle(color: colorDeppGreen),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
