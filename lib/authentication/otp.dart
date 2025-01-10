import 'package:flutter/material.dart';

class OtpScreen extends StatelessWidget {
  final String verificationCode;
  const OtpScreen({Key? key, required this.verificationCode}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('OTP Screen'),
      ),
      body: Center(
        child: Text('Verification Code: $verificationCode'),
      ),
    );
  }
}