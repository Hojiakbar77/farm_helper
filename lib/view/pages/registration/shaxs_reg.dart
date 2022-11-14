


import 'package:farm_helper/view/pages/sign_up/jusmoniy_sign_up.dart';
import 'package:farm_helper/view/pages/passcode/passcode_jismoniy.dart';
import 'package:farm_helper/utils/const.dart';

import 'package:flutter/material.dart';

import 'fermer_reg.dart';

class Register1 extends StatefulWidget {
  const Register1({Key? key}) : super(key: key);

  @override
  Register1State createState() => Register1State();
}

class Register1State extends State<Register1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: colorDeppGreen,
        title: const Center(
            child: Text(
          'Register',
        )),
        automaticallyImplyLeading: false,
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
                  regName("Ism Familya"),
                  const SizedBox(
                    height: 10,
                  ),
                  texFieldItem(),
                  const SizedBox(
                    height: 10,
                  ),
                  regName("Telefon Raqam"),
                  const SizedBox(
                    height: 10,
                  ),
                  texFieldItem(),
                  const SizedBox(
                    height: 10,
                  ),
                  regName("Viloyat"),
                  const SizedBox(
                    height: 10,
                  ),
                  texFieldItem(),
                  regName("Tuman"),
                  const SizedBox(
                    height: 10,
                  ),
                  texFieldItem(),
                  const SizedBox(
                    height: 10,
                  ),
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
                              builder: (context) => const VerificationScreen2()),
                        );
                        // Respond to button press
                      },
                      child: const Text(
                        'Register',
                        style: TextStyle(color: colorWhite),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Siz ro'yhatdan o'tganmisiz?",
                          style: TextStyle(color: colorGrey)),
                      const SizedBox(
                        width: 10,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Signin1()),
                          );
                        },
                        child: const Text(
                          "Sign In ",
                          style: TextStyle(color: colorDeppGreen),
                        ),
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
