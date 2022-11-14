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
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text("Hisobot"),
        backgroundColor: colorDeppGreen,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
           planItem(
               context,
               "Bug'doy",
               "10",
               "50",
               "jarayonda",
               "1 kg = 2000",
               "3",
               "Paxta",
               colorDeppGreen
           ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: MediaQuery.of(context).size.width / 1.0,
                height: 5,
                color: colorGrey,


              ),
            ),
            const Text("2022 Yil Hisoboti",style: secondNameStyle,),

            planItem(
                context,
                "Paxta",
                "10",
                "10",
                "110",
                "1 kg = 3000 ",
                "6",
                "Bugdoy",
                colorBlue),
            planItem(
                context,
                "Paxta",
                "50",
                "80",
                "70",
                "1 kg = 3000",
                "3",
                "Bug'doy",
              colorRed
            )

        ],),
      ),
    );
  }
}
Widget planItem(context,String nameHosil,dvurugKg,dvPlan,frbPlan,dvgsotnarx,muddat,nextmahsulot,color){
  return  Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
            color: color
      ),
      width: MediaQuery.of(context).size.width / 1.0,
      height: MediaQuery.of(context).size.height / 4.0,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const Text("Daladagi Hosil Turi : ",style: firstNameStyle,),
                Text(nameHosil,)
              ],
            ),
            const SizedBox(height: 6,),
            Row(
              children: [
                const Text("Davalat tomonidan berilga urug' : ",style: firstNameStyle,),
                Text("$dvurugKg T")


              ],


            ),

            const SizedBox(height: 6,),
            Row(
              children: [
                const Text("Davalat tomonidan qo'yilgan Plan : ",style: firstNameStyle,),
                Text("$dvPlan T")


              ],


            ),

            const SizedBox(height: 6,),
            Row(
              children: [
                const Text("Fermer tomonidan Bajirlgan Plan  : ",style: firstNameStyle,),
                Text("$frbPlan T")

              ],


            ),
            const SizedBox(height: 6,),
            Row(
              children: [
                const Text("Davalatga sotilgan narx' : ",style: firstNameStyle,),
                Text("$dvgsotnarx so'm")


              ],


            ),
            const SizedBox(height: 6,),
            Row(
              children: [
                const Text("Berilgan Muddat  : ",style: firstNameStyle,),
                Text("$muddat oy")

              ],

            ),
            const SizedBox(height: 6,),
            Row(
              children: [
                const Text("Keyngi ekilgan Mahsuot turi  : ",style: firstNameStyle,),
                Text(nextmahsulot)

              ],

            ),

          ],

        ),
      ),
    ),

  );
}

