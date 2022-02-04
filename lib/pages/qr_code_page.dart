import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class QrCodePage extends StatefulWidget {
  static const String id = "qr_code_page";
  const QrCodePage({Key? key}) : super(key: key);

  @override
  _QrCodePageState createState() => _QrCodePageState();
}

class _QrCodePageState extends State<QrCodePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("QR Code"),
        centerTitle: true,
      ),
      body: Center(
        child: QrImage(
          data: "http://onelink.to/nfq396",
          size: 250.0,
        ),
      ),
    );
  }
}
