// ignore_for_file: prefer_const_constructors

import 'package:demo_project/QR%20code/create_qr_code.dart';
import 'package:flutter/material.dart';

import 'generate_qr_code.dart';

class BottomNavugation extends StatefulWidget {
  const BottomNavugation({Key? key}) : super(key: key);

  @override
  _BottomNavugationState createState() => _BottomNavugationState();
}

class _BottomNavugationState extends State<BottomNavugation> {
  int currentindex = 0;
  List screeShow = [
    QRcode(),
    QRScan(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screeShow[currentindex],
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 10,
        child: Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MaterialButton(
                minWidth: 40,
                onPressed: () {
                  setState(() {
                    currentindex = 0;
                  });
                },
                child: Column(
                  children: [
                    Icon(
                      Icons.qr_code_2_rounded,
                      color:
                          currentindex == 0 ? Color(0xFF2D852D) : Colors.grey,
                    ),
                    Text(
                      'Create QR code',
                      style: TextStyle(
                        color:
                            currentindex == 0 ? Color(0xFF2D852D) : Colors.grey,
                      ),
                    )
                  ],
                ),
              ),
              MaterialButton(
                minWidth: 40,
                onPressed: () {
                  setState(() {
                    currentindex = 1;
                  });
                },
                child: Column(
                  children: [
                    Icon(
                      Icons.qr_code_scanner_rounded,
                      color:
                          currentindex == 1 ? Color(0xFF2D852D) : Colors.grey,
                    ),
                    Text(
                      'Scan QR code',
                      style: TextStyle(
                        color:
                            currentindex == 1 ? Color(0xFF2D852D) : Colors.grey,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
