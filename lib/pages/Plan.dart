import 'package:farm_helper/utils/const.dart';
import 'package:flutter/material.dart';
class Planpage extends StatefulWidget {
  const Planpage({Key? key}) : super(key: key);

  @override
  State<Planpage> createState() => _PlanpageState();
}

class _PlanpageState extends State<Planpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: MediaQuery.of(context).size.width / 1.0,
                height: MediaQuery.of(context).size.height / 4.0,
                color: Colors.yellow[100],
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text("Daladagi Hosil Turi : ",style: secondNameStyle),
                          Text(" Bug'doy ")
                        ],
                      ),
                      SizedBox(height: 6,),
                      Row(
                        children: [
                          Text("Davalat tomonidan berilga urug' : ",style: secondNameStyle),
                          Text(" 50 T ")


                        ],


                      ),
                      SizedBox(height: 6,),
                      Row(
                        children: [
                          Text("Davalat tomonidan qo'yilgan Plan : ",style: secondNameStyle),
                          Text(" 200 T ")


                        ],


                      ),
                      SizedBox(height: 6,),
                      Row(
                        children: [
                          Text("Fermer tomonidan Bajirlgan Plan  : ",style: secondNameStyle),
                          Text(" jarayonda ")

                        ],

                      ),
                      SizedBox(height: 6,),
                      Row(
                        children: [
                          Text("Davalatga sotiladigan narx' : ",style: secondNameStyle),
                          Text(" 1 kg = 2 0 0 0 so'm ")


                        ],


                      ),
                      SizedBox(height: 6,),
                      Row(
                        children: [
                          Text("Berilgan Muddat  : ",style: secondNameStyle),
                          Text(" 6 oy ")

                        ],

                      ),
                      SizedBox(height: 6,),
                      Row(
                        children: [
                          Text("Keyngi ekiladigan Mahsuot turi  : ",style: secondNameStyle),
                          Text(" Paxta ")

                        ],

                      ),

                    ],

                  ),
                ),
              ),

            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: MediaQuery.of(context).size.width / 1.0,
                height: 5,
                color: Colors.grey,


              ),
            ),
            Container(
              child: Text("2022 Yil Hisoboti",style: secondNameStyle,),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: MediaQuery.of(context).size.width / 1.0,
                height: MediaQuery.of(context).size.height / 4.0,
                color: Colors.green[500],
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text("Daladagi Hosil Turi : ",style: firstNameStyle,),
                          Text(" Paxta ",)
                        ],
                      ),
                      SizedBox(height: 6,),
                      Row(
                        children: [
                          Text("Davalat tomonidan berilga urug' : ",style: firstNameStyle,),
                          Text(" 50 T ")


                        ],


                      ),

                      SizedBox(height: 6,),
                      Row(
                        children: [
                          Text("Davalat tomonidan qo'yilgan Plan : ",style: firstNameStyle,),
                          Text(" 100 T ")


                        ],


                      ),

                      SizedBox(height: 6,),
                      Row(
                        children: [
                          Text("Fermer tomonidan Bajirlgan Plan  : ",style: firstNameStyle,),
                          Text(" 120 T ")

                        ],


                      ),
                      SizedBox(height: 6,),
                      Row(
                        children: [
                          Text("Davalatga sotiladigan narx' : ",style: firstNameStyle,),
                          Text(" 1 kg = 3 0 0 0 so'm ")


                        ],


                      ),
                      SizedBox(height: 6,),
                      Row(
                        children: [
                          Text("Berilgan Muddat  : ",style: firstNameStyle,),
                          Text(" 6 oy ")

                        ],

                      ),
                      SizedBox(height: 6,),
                      Row(
                        children: [
                          Text("Keyngi ekilgan Mahsuot turi  : ",style: firstNameStyle,),
                          Text(" Bug'doy ")

                        ],

                      ),

                    ],

                  ),
                ),
              ),

            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: MediaQuery.of(context).size.width / 1.0,
                height: MediaQuery.of(context).size.height / 4.0,
                color: Colors.red[500],
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text("Daladagi Hosil Turi : ",style: firstNameStyle,),
                          Text(" Paxta ",)
                        ],
                      ),
                      SizedBox(height: 6,),
                      Row(
                        children: [
                          Text("Davalat tomonidan berilga urug' : ",style: firstNameStyle,),
                          Text(" 50 T ")


                        ],


                      ),

                      SizedBox(height: 6,),
                      Row(
                        children: [
                          Text("Davalat tomonidan qo'yilgan Plan : ",style: firstNameStyle,),
                          Text(" 80 T ")


                        ],


                      ),

                      SizedBox(height: 6,),
                      Row(
                        children: [
                          Text("Fermer tomonidan Bajirlgan Plan  : ",style: firstNameStyle,),
                          Text(" 70 T ")

                        ],


                      ),
                      SizedBox(height: 6,),
                      Row(
                        children: [
                          Text("Davalatga sotiladigan narx' : ",style: firstNameStyle,),
                          Text(" 1 kg = 3 0 0 0 so'm ")


                        ],


                      ),
                      SizedBox(height: 6,),
                      Row(
                        children: [
                          Text("Berilgan Muddat  : ",style: firstNameStyle,),
                          Text(" 3 oy ")

                        ],

                      ),
                      SizedBox(height: 6,),
                      Row(
                        children: [
                          Text("Keyngi ekilgan Mahsuot turi  : ",style: firstNameStyle,),
                          Text(" Bug'doy ")

                        ],

                      ),

                    ],

                  ),
                ),
              ),

            ),

        ],),
      ),
    );
  }
}
