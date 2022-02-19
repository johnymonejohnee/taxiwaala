import 'package:drivers_app/authentication/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailtextEditingController = TextEditingController();
  TextEditingController passwordtextEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.all(35.0),
                child: Image.asset("images/logo1.png"),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "Login As Driver",
                style: GoogleFonts.patrickHand(
                    fontSize: 40, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
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
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "Login",
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  )),
              TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (c) => SignUpScreen()));
                  },
                  child: Text("Don't  have an Account? Signup Here")),
            ],
          ),
        ),
      ),
    );
  }
}
