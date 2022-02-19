import 'package:drivers_app/authentication/car_info.dart';
import 'package:drivers_app/authentication/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpScreen extends StatefulWidget {
  SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController nametextEditingController = TextEditingController();
  TextEditingController emailtextEditingController = TextEditingController();
  TextEditingController phonetextEditingController = TextEditingController();
  TextEditingController passwordtextEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.all(35.0),
              child: Image.asset("images/logo1.png"),
            ),
            Text(
              "Register As Driver",
              style: GoogleFonts.patrickHand(
                  fontSize: 40, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10,
            ),
            TextField(
              controller: nametextEditingController,
              style: const TextStyle(color: Colors.black, fontSize: 18),
              decoration: const InputDecoration(
                  labelText: "Name",
                  hintText: "Name",
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black)),
                  hintStyle: TextStyle(color: Colors.grey, fontSize: 17),
                  labelStyle: TextStyle(color: Colors.black, fontSize: 16)),
            ),
            TextField(
              controller: emailtextEditingController,
              keyboardType: TextInputType.emailAddress,
              style: const TextStyle(color: Colors.black, fontSize: 18),
              decoration: const InputDecoration(
                  labelText: "Email",
                  hintText: "Email",
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black)),
                  hintStyle: TextStyle(color: Colors.grey, fontSize: 17),
                  labelStyle: TextStyle(color: Colors.black, fontSize: 16)),
            ),
            TextField(
              controller: phonetextEditingController,
              keyboardType: TextInputType.number,
              style: const TextStyle(color: Colors.black, fontSize: 18),
              decoration: const InputDecoration(
                  labelText: "Phone Number",
                  hintText: "enter your pone number",
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black)),
                  hintStyle: TextStyle(color: Colors.grey, fontSize: 17),
                  labelStyle: TextStyle(color: Colors.black, fontSize: 16)),
            ),
            TextField(
              controller: passwordtextEditingController,
              keyboardType: TextInputType.text,
              obscureText: true,
              style: const TextStyle(color: Colors.black, fontSize: 18),
              decoration: const InputDecoration(
                  labelText: "password",
                  hintText: "password",
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black)),
                  hintStyle: TextStyle(color: Colors.grey, fontSize: 17),
                  labelStyle: TextStyle(color: Colors.black, fontSize: 16)),
            ),
            const SizedBox(
              height: 16,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (c) => CarInfoScreen()));
                },
                child: Text(
                  "create Account",
                  style: TextStyle(color: Colors.black, fontSize: 20),
                )),
            TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (c) => LoginScreen()));
                },
                child: Text("Already have an Account? Login  Here")),
          ],
        ),
      )),
    );
  }
}
