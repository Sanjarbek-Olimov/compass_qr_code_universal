import 'package:compass/pages/compass_page.dart';
import 'package:compass/pages/qr_code_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_compass/flutter_compass.dart';
import 'dart:math';

class HomePage extends StatefulWidget {
  static const String id = "home_page";

  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        centerTitle: true,
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          MaterialButton(
            minWidth: MediaQuery.of(context).size.width * 0.5,
            color: Colors.blue,
            onPressed: () {
              Navigator.pushNamed(context, CompassPage.id);
            },
            child: const Text(
              "Compass",
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
          ),
          const SizedBox(height: 10,),
          MaterialButton(
            minWidth: MediaQuery.of(context).size.width * 0.5,
            color: Colors.blue,
            onPressed: () {
              Navigator.pushNamed(context, QrCodePage.id);
            },
            child: const Text(
              "QR Code",
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
          ),
        ],
      )),
    );
  }
}
