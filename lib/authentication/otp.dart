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
      pagetitle: 'register.verify_phone'.tr(),
      onButtonPressed: () {
        Navigator.pushNamed(context, AppRouter.kycpage);
      },
      buttontext: "home.continue".tr(),
      pagedescription: "register.enter_otp".tr(),
      children: SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints(
            minHeight: MediaQuery.of(context).size.height,
          ),
          child: IntrinsicHeight(
            child: Column(
              children: [
                Expanded(
                  child: OTPField(verificationId: verificationCode),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

