import 'package:flutter/material.dart';

class OtpScreen extends StatelessWidget {
  final String verificationCode;
  const OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('This is otp'),
      ),
      body: Center(
        child: Text('Hello'),
      ),
    );
  }
}