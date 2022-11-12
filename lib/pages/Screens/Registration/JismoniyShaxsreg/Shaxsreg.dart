import 'package:farm_helper/pages/Screens/HomePage.dart';
import 'package:farm_helper/pages/Screens/Registration/Fermer_reg/Sign_up.dart';
import 'package:farm_helper/pages/Screens/Registration/JismoniyShaxsreg/HomePage.dart';
import 'package:farm_helper/pages/Screens/Registration/XizmatReg/HomePage.dart';
import 'package:flutter/material.dart';

class Register1 extends StatefulWidget {
  const Register1({Key? key}) : super(key: key);

  @override
  _Register1State createState() => _Register1State();
}

class _Register1State extends State<Register1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Center(child: Text('Register',)),

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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Text("Ism Familya"),
                    ],

                  ),
                  SizedBox(height: 10,),
                  Container(
                    child:  TextField(
                      decoration: InputDecoration(

                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          filled: true,
                          hintStyle: TextStyle(color: Colors.grey[800]),

                          fillColor: Colors.white70),
                    ),
                  ),
                  const SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Text("Telefon Raqam"),
                    ],

                  ),
                  SizedBox(height: 10,),
                  Container(
                    child:  TextField(
                      decoration: InputDecoration(

                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          filled: true,
                          hintStyle: TextStyle(color: Colors.grey[800]),

                          fillColor: Colors.white70),
                    ),
                  ),
                  const SizedBox(height: 10,),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Text("Viloyat"),
                    ],

                  ),
                  SizedBox(height: 10,),
                  Container(
                    child:  TextField(
                      decoration: InputDecoration(

                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          filled: true,
                          hintStyle: TextStyle(color: Colors.grey[800]),

                          fillColor: Colors.white70),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Text("Tuman"),
                    ],

                  ),
                  SizedBox(height: 10,),
                  Container(
                    child:  TextField(
                      decoration: InputDecoration(

                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          filled: true,
                          hintStyle: TextStyle(color: Colors.grey[800]),

                          fillColor: Colors.white70),
                    ),
                  ),
                  const SizedBox(height: 10,),
                  const SizedBox(height: 10,),


                  const SizedBox(height: 50,),
                  Container(

                    color: Colors.white,
                    height: 50,
                    width: 320,
                    child: ElevatedButton(
                      style: ButtonStyle(
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18.0),
                                  side: BorderSide(color: Colors.lightGreen)
                              )
                          )
                      ) ,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => HomePage2()),
                        );
                        // Respond to button press
                      },

                      child: const Text('Register',style: TextStyle(color: Colors.white),),
                    ),
                  ),
                  const SizedBox(height: 15,),



                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Siz Allaqachon ro'yhatdan o'tganmisiz?",style: TextStyle(color: Colors.grey)),
                      const SizedBox(width: 10,),
                      InkWell(
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const Sign_in()),
                          );
                        },
                        child:Text("Sign In ",style: TextStyle(color: Colors.lightGreen),) ,
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
