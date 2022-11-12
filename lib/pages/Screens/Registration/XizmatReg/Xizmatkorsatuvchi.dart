import 'package:farm_helper/pages/Screens/Registration/Fermer_reg/Fermer_reg.dart';
import 'package:farm_helper/pages/Screens/Registration/Fermer_reg/Sign_up.dart';
import 'package:flutter/material.dart';

import 'XizmatReg.dart';

class RequsetPage1 extends StatefulWidget {
  const RequsetPage1({Key? key}) : super(key: key);

  @override
  State<RequsetPage1> createState() => _RequsetPage1State();
}

class _RequsetPage1State extends State<RequsetPage1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          automaticallyImplyLeading: false,
        title: Center(child: Text("So'rovnoma")),


      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Kim Sifatida Ro'yhatdan o'tmoqchisiz?",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
            SizedBox(height: 20,),
            SizedBox(
              width: 250,
              height: 50,
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
                    MaterialPageRoute(builder: (context) => const Register1()),
                  );
                  // Respond to button press
                },


                child: const Text('Texnik xizmat',style: TextStyle(color: Colors.white),),
              ),
            ),
            SizedBox(height: 20,),
            SizedBox(
              width: 250,
              height: 50,
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
                    MaterialPageRoute(builder: (context) => const Register1()),
                  );
                  // Respond to button press
                },


                child: const Text(" Mahsulot Xizmati",style: TextStyle(color: Colors.white),),
              ),
            ),
            SizedBox(height: 20,),
            SizedBox(
              width: 250,
              height: 50,
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
                    MaterialPageRoute(builder: (context) => const Register1()),
                  );
                  // Respond to button press
                },


                child: const Text('Mutaxasis xizmati',style: TextStyle(color: Colors.white),),
              ),
            ),


          ],
        ),
      ),
    );

  }
}
