import 'package:farm_helper/view/pages/registration/fermer_reg.dart';
import 'package:farm_helper/view/pages/request/xizmat_request.dart';
import 'package:flutter/material.dart';

import '../../../utils/const.dart';
import '../registration/shaxs_reg.dart';

class RequsetPage extends StatefulWidget {
  const RequsetPage({Key? key}) : super(key: key);

  @override
  State<RequsetPage> createState() => _RequsetPageState();
}

class _RequsetPageState extends State<RequsetPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: colorDeppGreen,
          title: const Center(child: Text("So'rovnoma")),
          automaticallyImplyLeading: false),
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
                    MaterialPageRoute(builder: (context) => const Register()),
                  );
                  // Respond to button press
                },
                child: const Text(
                  'Fermer',
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
                    MaterialPageRoute(
                        builder: (context) => const RequsetPage1()),
                  );
                  // Respond to button press
                },
                child: const Text(
                  " Xizmat ko'rsatuvchi",
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
                    MaterialPageRoute(builder: (context) => const Register1()),
                  );
                  // Respond to button press
                },
                child: const Text(
                  'Jismoniy Shaxs',
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
