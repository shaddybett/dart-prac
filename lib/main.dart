import 'package:flutter/material.dart';
import 'package:grocery_app/router/approuter.dart';

void main() => runApp(Main());

class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: AppRouter.phone,
      onGenerateRoute: AppRouter.onGenerateRoute,
    );
  }
}