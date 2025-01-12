import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:grocery_app/utils/widgets/authentication/otpField.dart';

import '../../router/approuter.dart';
import '../../utils/widgets/authentication/authpages.dart';

class OtpScreen extends StatelessWidget {
  final String verificationCode;
  const OtpScreen({super.key, required this.verificationCode});

  @override
  Widget build(BuildContext context) {
    return AuthPageManager(
      pagetitle: 'verify phone number'.tr(),
      onButtonPressed: () {
        Navigator.pushNamed(context, AppRouter.kycpage);
      },
      // buttontext: "home.continue".tr(),
      pagedescription: "Enter otp".tr(),
      children: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height * .6,
          child: Column(
            children: [OTPField(verificationId: verificationCode)],
          ),
        ),
      ),
    );
  }
}
