import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
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
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: defaultPadding),
            child: Container(
              height: MediaQuery.of(context).size.height, // Set height to match screen height
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch, // Stretch children horizontally
                children: [
                  const SizedBox(height: 50),
                  // LOGO
                  PocketWiseLogo(
                    darkMode: false,
                  ),

                  const SizedBox(height: 50),

                  // Page Title
                  Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        pagetitle,
                      ).largeBold(),
                    ),
                  ),

                  const SizedBox(height: 30),

                  // Page Description
                  Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        pagedescription,
                      ).normal(),
                    ),
                  ),

                  const SizedBox(height: 30),

                  // Children widget
                  children ?? Container(),

                  const Spacer(),  

                  // Button
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      width: double.infinity,
                      height: 50,
                      child: Customelevatedbutton(
                        text: buttontext,
                        textcolor: white,
                        onPressed: onButtonPressed,
                      ),
                    ),
                  ),
                    const SizedBox(height: 50),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
