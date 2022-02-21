import 'package:drivers_app/global/global.dart';
import 'package:drivers_app/mainScreens/main_screen.dart';
import 'package:drivers_app/splashScreen/splash_screen.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';

class CarInfoScreen extends StatefulWidget {
  CarInfoScreen({Key? key}) : super(key: key);

  @override
  State<CarInfoScreen> createState() => _CarInfoScreenState();
}

class _CarInfoScreenState extends State<CarInfoScreen> {
  TextEditingController TaxiModeltextEditingController =
      TextEditingController();

  TextEditingController TaxiNumbertextEditingController =
      TextEditingController();
  TextEditingController TaxiColortextEditingController =
      TextEditingController();

  List<String> carTypesList = ["Car", "Auto", "Bike"];
  String? selectedCartype;

  saveCarInfo() {
    Map driverCarInfoMap = {
      "car_color": TaxiColortextEditingController.text.trim(),
      "car_number": TaxiNumbertextEditingController.text.trim(),
      "car_model": TaxiModeltextEditingController.text.trim(),
      "type": selectedCartype,
    };

    DatabaseReference driversRef =
        FirebaseDatabase.instance.ref().child("drivers");
    driversRef
        .child(currentFirebaseUser!.uid)
        .child("car_details")
        .set(driverCarInfoMap);

    Fluttertoast.showToast(msg: "details have been saved");
    Navigator.push(
        context, MaterialPageRoute(builder: (c) => const MySplashScreen()));
  }

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
                "Register your Taxi",
                style: GoogleFonts.patrickHand(
                    fontSize: 40, fontWeight: FontWeight.bold),
              ),
              TextField(
                controller: TaxiModeltextEditingController,
                style: const TextStyle(color: Colors.black, fontSize: 18),
                decoration: const InputDecoration(
                    labelText: "Taxi Model",
                    hintText: "  eg-Maruthi swift",
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.black)),
                    hintStyle: TextStyle(color: Colors.grey, fontSize: 17),
                    labelStyle: TextStyle(color: Colors.black, fontSize: 16)),
              ),
              TextField(
                controller: TaxiNumbertextEditingController,
                style: const TextStyle(color: Colors.black, fontSize: 18),
                decoration: const InputDecoration(
                    labelText: "Taxi Vehicle no",
                    hintText: "enter your vehicle no",
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.black)),
                    hintStyle: TextStyle(color: Colors.grey, fontSize: 17),
                    labelStyle: TextStyle(color: Colors.black, fontSize: 16)),
              ),
              TextField(
                controller: TaxiColortextEditingController,
                style: const TextStyle(color: Colors.black, fontSize: 18),
                decoration: const InputDecoration(
                    labelText: "Taxi Color",
                    hintText: "Color",
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.black)),
                    hintStyle: TextStyle(color: Colors.grey, fontSize: 17),
                    labelStyle: TextStyle(color: Colors.black, fontSize: 16)),
              ),
              const SizedBox(
                height: 15,
              ),
              DropdownButton(
                iconSize: 40,
                dropdownColor: Colors.white70,
                hint: const Text(
                  "choose Taxi type",
                  style: TextStyle(fontSize: 14, color: Colors.grey),
                ),
                value: selectedCartype,
                onChanged: (newvalue) {
                  setState(() {
                    selectedCartype = newvalue.toString();
                  });
                },
                items: carTypesList.map((car) {
                  return DropdownMenuItem(
                    child: Text(
                      car,
                    ),
                    value: car,
                  );
                }).toList(),
              ),
              const SizedBox(
                height: 46,
              ),
              ElevatedButton(
                  onPressed: () {
                    if (TaxiColortextEditingController.text.isNotEmpty &&
                        TaxiModeltextEditingController.text.isNotEmpty &&
                        TaxiNumbertextEditingController.text.isNotEmpty &&
                        selectedCartype != null) {
                      saveCarInfo();
                    }
                  },
                  child: Text(
                    "Save Details",
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
