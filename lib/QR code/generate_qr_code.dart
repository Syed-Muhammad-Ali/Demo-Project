import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

import '../Constant/Constants.dart';

class QRcode extends StatefulWidget {
  const QRcode({Key? key}) : super(key: key);

  @override
  _QRcodeState createState() => _QRcodeState();
}

class _QRcodeState extends State<QRcode> {
  final controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: CustomColors.primary,
        title: Text('QR Code Generator'),
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              QrImage(
                data: controller.text,
                size: 200,
                backgroundColor: Colors.white,
              ),
              SizedBox(
                height: height * 0.05,
              ),
              buildTextField(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildTextField(BuildContext context) => TextField(
        controller: controller,
        // ignore: prefer_const_constructors
        style: TextStyle(
          color: Colors.black,
          fontSize: 15,
        ),
        decoration: InputDecoration(
            labelText: 'Enter the data',
            labelStyle: TextStyle(color: Colors.grey),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(color: Colors.white),
            ),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide(
                  color: Theme.of(context).accentColor,
                )),
            suffixIcon: IconButton(
              color: Theme.of(context).accentColor,
              icon: Icon(Icons.done, size: 25),
              onPressed: () {
                setState(() {});
              },
            )),
      );
}
