import 'package:farm_helper/utils/const.dart';
import 'package:flutter/material.dart';

import '../registration/xizmat_reg.dart';

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
        backgroundColor: colorDeppGreen,
        automaticallyImplyLeading: false,
        title: const Center(child: Text("So'rovnoma")),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              "Kim Sifatida Ro'yhatdan o'tmoqchisiz?",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 250,
              height: 50,
              child: ElevatedButton(
                style: ButtonStyle(

                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                            side: const BorderSide(color: colorDeppGreen)))),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Register2()),
                  );
                  // Respond to button press
                },
                child: const Text(
                  'Texnik xizmat',
                  style: TextStyle(color: colorWhite),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 250,
              height: 50,
              child: ElevatedButton(
                style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                            side: const BorderSide(color: colorDeppGreen)))),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Register2()),
                  );
                  // Respond to button press
                },
                child: const Text(
                  " Mahsulot Xizmati",
                  style: TextStyle(color: colorWhite),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 250,
              height: 50,
              child: ElevatedButton(
                style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                            side: const BorderSide(color: colorDeppGreen)))),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Register2()),
                  );
                  // Respond to button press
                },
                child: const Text(
                  'Mutaxasis xizmati',
                  style: TextStyle(color: colorWhite),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
