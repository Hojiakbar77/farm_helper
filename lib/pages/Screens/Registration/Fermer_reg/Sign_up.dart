import 'package:farm_helper/pages/Screens/HomePage.dart';
import 'package:flutter/material.dart';


import 'Fermer_reg.dart';
class Sign_in extends StatefulWidget {
  const Sign_in({Key? key}) : super(key: key);

  @override
  _Sign_inState createState() => _Sign_inState();
}

class _Sign_inState extends State<Sign_in> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Center(child: Text(' Sign In ',)),
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,),
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
                      Text("Telefon Raqam"),
                    ],

                  ),
                  const SizedBox(height: 10,),
                  TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(

                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),

                        filled: true,
                        hintStyle: TextStyle(color: Colors.grey[800]),

                        fillColor: Colors.white70),
                  ),
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
                                  side: const BorderSide(color: Colors.lightGreen)
                              )
                          )
                      ) ,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const HomePage()),
                        );
                        // Respond to button press
                      },

                      child: const Text('Kirish',style: TextStyle(color: Colors.white),),
                    ),
                  ),
                  const SizedBox(height: 10,),

                  const SizedBox(height: 10,),

                  const SizedBox(height: 170,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text("Sizda hali account yoqmi?",style: TextStyle(color: Colors.grey)),
                      SizedBox(width: 10,),
                      Text("Register",style: TextStyle(color: Colors.lightGreen),)
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
