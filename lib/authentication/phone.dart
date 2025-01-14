import 'package:easy_localization/easy_localization.dart';
// import 'package:firebase_auth/firebase_auth.dart';
import 'package:grocery_app/repository/auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../router/approuter.dart';
import '../utils/constants/customsnackbar.dart';
import '../utils/widgets/authentication/authpages.dart';
import '../utils/widgets/authentication/phoneField.dart';

class PhoneScreen extends StatefulWidget {
  const PhoneScreen({Key? key}) : super(key: key);

  @override
  State<PhoneScreen> createState() => _PhoneScreenState();
}

class _PhoneScreenState extends State<PhoneScreen> {
  final Auth auth = Auth();
  bool validPhone = false;
  bool isLoading = false;
  String phoneNum = "";
  final TextEditingController phoneController = TextEditingController();

  String? validatePhone(String phone) {
    if (phone.length != 9) {
      setState(() {
        validPhone = false;
      });
      return 'Enter a valid phone number (9 digits)';
    } else {
      setState(() {
        validPhone = true;
        phoneNum = "+254$phone";
      });
    }
    return null;
  }

  Future<void> _savePhone(String phone) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('phone', phone);
  }


  void initiateSignIn() async {
    validatePhone(phoneController.text);
    if (validPhone) {
      await _savePhone(phoneNum);
      setState(() {
        isLoading = true;
      });

      await Future.delayed(const Duration(seconds: 2));
      setState(() {
        isLoading = false;
      });
      Navigator.pushNamed(
        context,
        AppRouter.otpscreen,
        arguments: "123456",
      );
      // auth.signInWithPhone(
      //   phoneNum,
      //   context,
      //   (verificationId, resendToken) {
      //     setState(() {
      //       isLoading = false;
      //     });
          // Navigator.pushNamed(
          //   context,
          //   AppRouter.otpscreen,
          //   // arguments: verificationId,
          // );
      //   },
      //   (errorMessage) {
      //     setState(() {
      //       isLoading = false;
      //     });
      //     showCustomSnackbar(context, errorMessage);
      //   },
      // );
    } else {
      showCustomSnackbar(context, 'Please enter a valid phone number (9 digits)');
    }
  }

  @override
  Widget build(BuildContext context) {
    return AuthPageManager(
      pagetitle: 'register.register'.tr(),
      onButtonPressed: initiateSignIn,
      buttontext: "home.continue".tr(),
      pagedescription: "register.descriptionr".tr(),
      children: Column(
        children: [
          Phonefield(phoneController: phoneController),
          const SizedBox(height: 20),
          isLoading ? CircularProgressIndicator() : Container(),
        ],
      ),
    );
  }
}
