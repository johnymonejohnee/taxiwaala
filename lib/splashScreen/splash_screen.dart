import 'dart:async';

import 'package:drivers_app/authentication/login_screen.dart';
import 'package:drivers_app/authentication/signup_screen.dart';
import 'package:drivers_app/mainScreens/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MySplashScreen extends StatefulWidget {
  const MySplashScreen({Key? key}) : super(key: key);

  @override
  State<MySplashScreen> createState() => _MySplashScreenState();
}

class _MySplashScreenState extends State<MySplashScreen> {
  startTimer() {
    Timer(const Duration(seconds: 3), () async {
      Navigator.push(context, MaterialPageRoute(builder: (c) => LoginScreen()));
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startTimer();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: Colors.white,
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 40),
              child: Image.asset("images/splash.png"),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Taaxiwala",
              style: GoogleFonts.pacifico(fontSize: 50),
            ),
            SizedBox(
              height: 8,
            ),
            Text("WELCOME TO TAXIWALA DRIVERS APP")
          ],
        )),
      ),
    );
  }
}
