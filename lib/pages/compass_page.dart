import 'package:flutter/material.dart';
import 'package:flutter_compass/flutter_compass.dart';
import 'dart:math';

class CompassPage extends StatefulWidget {
  static const String id = "compass_page";

  const CompassPage({Key? key}) : super(key: key);

  @override
  _CompassPageState createState() => _CompassPageState();
}

class _CompassPageState extends State<CompassPage> {
  double _direction = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    FlutterCompass.events!.listen((event) {
      setState(() {
        _direction = event.heading!;
      });
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    FlutterCompass.events!.listen((event) {}).cancel();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Compass"),
        centerTitle: true,
      ),
      body: Center(
        child: Transform.rotate(
            angle: ((_direction) * (pi / 180) * -1),
            child: Image.asset("assets/compass.png",
                width: MediaQuery.of(context).size.width * 0.8)),
      ),
    );
  }
}
