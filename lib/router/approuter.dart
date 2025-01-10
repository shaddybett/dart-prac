import 'package:flutter/material.dart';
import '../authentication/phone.dart';
import '../authentication/otp.dart';

class AppRouter extends StatelessWidget {
  const AppRouter({super.key});
  static const String phone = "/phone";
  static const String otpscreen = "/otp";

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case phone:
        return _slideRoute(PhoneScreen());
      case otpscreen:
        return _slideRoute(OtpScreen(verificationCode: args as String));
      default:
        return _slideRoute(
          Scaffold(
            body: Center(child: Text('Page not found')),
          ),
        );
    }
  }
  
}