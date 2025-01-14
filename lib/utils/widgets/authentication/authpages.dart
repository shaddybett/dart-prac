import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:grocery_app/utils/constants/colors.dart';
import 'package:grocery_app/utils/constants/defaultPadding.dart';
import 'package:grocery_app/utils/constants/textutil.dart';
import 'package:grocery_app/utils/globals.dart';
import 'package:grocery_app/utils/widgets/authentication/customElevatedButton.dart';

class AuthPageManager extends StatelessWidget {
  final String pagetitle;
  final String buttontext;
  final String pagedescription;
  final VoidCallback onButtonPressed;
  final Widget? children;

  const AuthPageManager({
    super.key,
    required this.children,
    required this.pagetitle,
    required this.pagedescription,
    this.buttontext = "Continue",
    required this.onButtonPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true, // Adjusts for the keyboard
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: defaultPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 50),

              // LOGO
              Center(child: GroceryAppLogo(darkMode: false)),

              const SizedBox(height: 50),

              // Page Title
              Align(
                alignment: Alignment.center,
                child: Text(
                  pagetitle,
                ).largeBold(),
              ),

              const SizedBox(height: 30),

              // Page Description
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  pagedescription,
                ).normal(),
              ),

              const SizedBox(height: 30),

              // Children widget with scrollable behavior
              Expanded(
                child: SingleChildScrollView(
                  child: children ?? Container(),
                ),
              ),

              // Button
              const SizedBox(height: 20),
              Customelevatedbutton(
                text: buttontext,
                textcolor: white,
                onPressed: onButtonPressed,
              ),
              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}

class Customelevatedbutton extends StatelessWidget {
  final String text;
  final Color textcolor;
  final VoidCallback onPressed;
  final Color? backgroundColor; // Optional background color for the button

  const Customelevatedbutton({
    super.key,
    required this.text,
    required this.textcolor,
    required this.onPressed,
    this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor ?? Theme.of(context).primaryColor,
      ),
      onPressed: onPressed,
      child: Text(
        text,
        style: TextStyle(color: textcolor),
      ),
    );
  }
}
