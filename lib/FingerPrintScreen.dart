import 'package:flutter/material.dart';
import 'package:screenshot_share/ElectionVotepage.dart';
import 'package:screenshot_share/Widgets/Verfication_Screen.dart';

class FingerPrintScreen extends StatefulWidget {
  const FingerPrintScreen({super.key});

  @override
  State<FingerPrintScreen> createState() => _FingerPrintScreenState();
}

class _FingerPrintScreenState extends State<FingerPrintScreen> {
  bool scan = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: InkWell(
              onTap: () {
                setState(() {
                  scan = true;
                  Future.delayed(Duration(seconds: 2), () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Loginpage(),
                        ));

                    ScaffoldMessenger(child: Text("Login Sucessfully!"));
                  });
                });
              },
              child: scan
                  ? Icon(
                      Icons.fingerprint,
                      size: 200,
                      color: Colors.green,
                    )
                  : Icon(
                      Icons.fingerprint,
                      size: 200,
                    ),
            ),
          )
        ],
      ),
    );
  }
}
