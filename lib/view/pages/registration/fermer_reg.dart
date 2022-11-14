


import 'package:farm_helper/utils/const.dart';
import 'package:flutter/material.dart';

import '../passcode/passcode_screen.dart';
import '../sign_up/fermer_sign_up.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  RegisterState createState() => RegisterState();
}

class RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: colorDeppGreen,
        title: const Center(child: Text('Register',)),

        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: Column(
          //crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(padding: const EdgeInsets.all(50),
              child: Column(
                children:  [
                 regName("Ism Familya"),
                  const SizedBox(height: 10,),
                 texFieldItem(),
                  const SizedBox(height: 10,),
                  regName("Telefon Raqam"),
                  const SizedBox(height: 10,),
                  texFieldItem(),
                  const SizedBox(height: 10,),

                  regName("Viloyat"),
                  const SizedBox(height: 10,),
                  texFieldItem(),
                  const SizedBox(height: 10,),
                  regName("Tuman"),
                  const SizedBox(height: 10,),
                  texFieldItem(),
                  const SizedBox(height: 10,),
                  const SizedBox(height: 10,),

                  regName("Fermerlik Guvohnoma Raqami"),

                  const SizedBox(height: 10,),
                 texFieldItem(),
                  const SizedBox(height: 50,),
                  Container(

                    color: colorWhite,
                    height: 50,
                    width: 320,
                    child: ElevatedButton(
                      style: ButtonStyle(
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18.0),
                                  side: const BorderSide(color: colorDeppGreen)
                              )
                          )
                      ) ,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const VerificationScreen1()),
                        );
                        // Respond to button press
                      },

                      child: const Text('Register',style: TextStyle(color: colorWhite),),
                    ),
                  ),
                  const SizedBox(height: 15,),



                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Siz  ro'yhatdan o'tganmisiz?",style: TextStyle(color: colorGrey)),
                      const SizedBox(width: 10,),
                      InkWell(
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const Signin()),
                          );
                        },
                        child:const Text("Sign In ",style: TextStyle(color: colorDeppGreen),) ,
                      )


                    ],
                  )

                ],
              ),
            )

          ],
        ),
      ),
    ) ;
  }
}
Widget texFieldItem(){
  return TextField(
    decoration: InputDecoration(

        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        filled: true,
        hintStyle: TextStyle(color: Colors.grey[800]),

        fillColor: Colors.white70),
  );
}
Widget regName( String name1){
  return  Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children:  [
      Text(name1),
    ],

  );
}