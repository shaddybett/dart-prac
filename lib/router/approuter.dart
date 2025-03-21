import 'package:flutter/material.dart';
import 'package:grocery_app/authentication/login.dart';
import '../authentication/phone.dart';
import '../authentication/otp.dart';
import '../authentication/EnterKYCscreen.dart';
// import '../authentication/login.dart';

class AppRouter {
  static const String phone = "/phone";
  static const String otpscreen = "/otpscreen";
  static const String kycpage = "/kycpage";
  static const String login = "/login";

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case phone:
        return _slideRoute(PhoneScreen());
      case otpscreen:
        return _slideRoute(OtpScreen(verificationCode: args as String));
      case kycpage:
        return _slideRoute(EnterKYCPage());
      case kycpage:
        return _slideRoute(Login());
      default:
        return _slideRoute(
          Scaffold(
            body: Center(child: Text('Page not found')),
          ),
        );
    }
  }
  static Route _slideRoute(Widget page) {
    return PageRouteBuilder(
      pageBuilder: (context , animation, secondaryAnimation) => page,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(1.0, 0.0);
        const end = Offset.zero;
        const curve = Curves.easeInOut;
        var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
        var offsetAnimation = animation.drive(tween);

        return SlideTransition(
          position: offsetAnimation,
          child: child,
        );
      },
    );
  }
}