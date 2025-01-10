import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

import '../../constants/colors.dart';
import '../../constants/textutil.dart';

class Phonefield extends StatefulWidget {
  final TextEditingController phoneController;
  const Phonefield({super.key, required this.phoneController});

  @override
  State<Phonefield> createState() => _PhonefieldState();
}

class _PhonefieldState extends State<Phonefield> {
  bool validphone = false;
  bool _showPhoneNoErrorText = false;
  String _selectedCountryCode = "+254";

  _hidePhoneNumberErrorMessage() {
    setState(() {
      _showPhoneNoErrorText = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return IntlPhoneField(
      controller: widget.phoneController,
      disableLengthCheck: true,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        enabledBorder: OutlineInputBorder(
          borderRadius: const BorderRadius.all(Radius.circular(10.0)),
          borderSide: BorderSide(width: 1, color: Colors.white),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: const BorderRadius.all(Radius.circular(10.0)),
          borderSide: BorderSide(width: 1, color: primaryColor),
        ),
        labelText: "enter phone".tr(),
        hintText: 'e.g 700000000',
        hintStyle: AppTextStyles.smallLight.copyWith(color: Colors.grey),
      ),
      initialCountryCode: 'KE',
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: (phone) {
        if (phone!.number.length != 9) {
          setState(() {
            validphone = false;
          });
          return 'Enter a valid phone number (9 digits)';
        } else {
          setState(() {
            validphone = true;
          });
        }
        return null;
      },
      onChanged: (phone) {
        _hidePhoneNumberErrorMessage();
      },
      onCountryChanged: (country) {
        _selectedCountryCode = "+${country.fullCountryCode}";
        _hidePhoneNumberErrorMessage();
      },
    );
  }
}
