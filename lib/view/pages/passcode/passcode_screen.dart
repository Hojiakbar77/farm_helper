
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

import '../../../../utils/const.dart';
import '../../../pages/Screens/fermer/home_page.dart';





class VerificationScreen1 extends StatefulWidget {
  const VerificationScreen1({super.key});

  @override
  VerificationScreen1State createState() => VerificationScreen1State();
}

class VerificationScreen1State extends State<VerificationScreen1> {
  late List<TextStyle?> otpTextStyles;
  late List<TextEditingController?> controls;
  int numberOfFields = 5;
  bool clearText = false;

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Container(
        padding: const EdgeInsets.only(left: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Verification Code",
              style: theme.textTheme.headlineMedium,
            ),
            const SizedBox(height: 16),
            Text(
              "Biz Sizga Kod jo'natdik",
              style: theme.textTheme.titleLarge,
            ),
            Text("Iltimos kodni kiriting", style: theme.textTheme.titleLarge),
            const Spacer(flex: 2),
            OtpTextField(
              numberOfFields: numberOfFields,
              borderColor: const Color(0xFF512DA8),
              focusedBorderColor: primaryColor,
              clearText: clearText,
              showFieldAsBox: true,
              textStyle: theme.textTheme.titleMedium,
              onCodeChanged: (String value) {
                //Handle each value
              },
              handleControllers: (controllers) {
                //get all textFields controller, if needed
                controls = controllers;
              },
              onSubmit: (String verificationCode) {
                //set clear text to clear text from all fields

                //navigate to different screen code goes here
              }, // end onSubmit
            ),
            const Spacer(),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Bu bizga ilovadagi har bir foydalanuvchini tekshirishga yordam beradi",
                  textAlign: TextAlign.center,
                  style: theme.textTheme.bodyLarge,
                ),
              ),
            ),
            Center(
              child: Text(
                "Kod olmadingizmi?",
                style: theme.textTheme.titleMedium,
              ),
            ),
            const Spacer(flex: 3),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomButton(

                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (_) => const HomePage()));
                  },
                  title: "Tasdiqlang",
                  color: colorDeppGreen,
                  textStyle: theme.textTheme.titleMedium?.copyWith(
                    color: colorWhite,
                  ),
                ),
              ],
            ),
            const Spacer(flex: 2),
          ],
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
        required this.title,
        this.onPressed,
        this.height = 60,
        this.elevation = 1,
        this.color = primaryColor,
        this.textStyle,
        this.width = 300});

  final VoidCallback? onPressed;
  final double height;
  final double elevation;
  final String title;
  final Color color;
  final double width;

  // final BorderSide borderSide;
  final TextStyle? textStyle;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      elevation: elevation,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(30)),
      ),
      height: height,
      minWidth: width,
      color: color,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            style: textStyle,
          )
        ],
      ),
    );
  }
}
