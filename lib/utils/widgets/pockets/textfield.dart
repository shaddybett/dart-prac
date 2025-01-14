import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
// import 'package:pocketwise/utils/constants/customAppBar.dart';
// import 'package:pocketwise/utils/widgets/pockets/customElevatedButton.dart';
import 'package:provider/provider.dart';

// import '../../../provider/dropdown_provider.dart';
import '../../constants/colors.dart';
import '../../constants/defaultPadding.dart';
import '../../constants/textutil.dart';
// import 'cardButtons.dart';
// import 'customTextFormField.dart';
// import 'dropdown.dart';
class CustomTextField extends StatefulWidget {
  final String? title;
  final String hint;
  double width;
  final bool hasdropdown;
  final bool hasOptions;
  final String option1;
  final String option2;
  final bool isPassword;  
  final TextInputType keyboardType;
  // final List<DropdownItem> dropdownItems;
  final TextEditingController controller;

  CustomTextField({
    super.key,
    required this.title,
    this.width = double.infinity,
    this.hasdropdown = false,
    this.hasOptions = false,
    this.isPassword = false, // Default value is false
    this.keyboardType = TextInputType.text,
    // this.dropdownItems = const [],
    this.option1 = '',
    this.option2 = '',
    required this.hint,
    required this.controller,
  });

  @override
  State<CustomTextField> createState() => one();
}

one() => runApp(MaterialApp());