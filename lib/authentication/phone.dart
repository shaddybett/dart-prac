import 'package:flutter/material.dart';
import 'package:grocery_app/router/approuter.dart';

class PhoneScreen extends StatelessWidget {
  const PhoneScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Phone Screen'),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
            Navigator.pushNamed(
              context,
              AppRouter.otpscreen,
              arguments: "123456",
          );
        }, child: Text('Go to OTP')),
      ),
    );
  }
}