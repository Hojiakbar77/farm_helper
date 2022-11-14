import 'package:farm_helper/view/pages/passcode/passcode_xizmat.dart';

import 'package:flutter/material.dart';

import '../../../utils/const.dart';

import '../sign_up/xizmat_sign_up.dart';
import 'fermer_reg.dart';

class Register2 extends StatefulWidget {
  const Register2({Key? key}) : super(key: key);

  @override
  Register2State createState() => Register2State();
}

class Register2State extends State<Register2> {
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
                  regName("Ism Familya "),
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
                  const SizedBox(
                    height: 10,
                  ),
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
                              builder: (context) => VerificationScreen3()),
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
                      const Text("Siz  ro'yhatdan o'tganmisiz?",
                          style: TextStyle(color: colorGrey)),
                      const SizedBox(
                        width: 10,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Signin2()),
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
