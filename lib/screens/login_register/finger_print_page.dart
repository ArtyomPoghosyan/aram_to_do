import 'package:arams_to_do/utils/finger_identify.dart';
import 'package:flutter/material.dart';

class FingerPrint extends StatefulWidget {
  const FingerPrint({super.key});

  @override
  State<FingerPrint> createState() => _FingerPrint();
}

class _FingerPrint extends State<FingerPrint> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: Colors.black,
      body: Column(
        children: [
          ElevatedButton(
              onPressed: () async {
                bool auth = await FingerIdentify.authentication();
                print("can authenticate: $auth");
                if (auth) {
                  Navigator.pushNamed(context, "/initial");
                }
              },
              child: Text("Fingerprint"))
        ],
      ),
    );
  }
}
