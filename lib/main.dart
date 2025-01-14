import 'dart:async';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:grocery_app/router/approuter.dart';
import 'utils/constants/colors.dart';

void main() {
    runZonedGuarded(() async {
    WidgetsFlutterBinding.ensureInitialized();
    await EasyLocalization.ensureInitialized();

    // SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    // SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    // await Firebase.initializeApp(
    //     options: DefaultFirebaseOptions.currentPlatform);
    // await FirebaseAppCheck.instance.activate(
    //   androidProvider: AndroidProvider.playIntegrity,
    //   appleProvider: AppleProvider.appAttest,
    // );

    runApp(EasyLocalization(
      path: 'assets/lang',
      supportedLocales: const [
        Locale('en'),
      ],
      fallbackLocale: const Locale('en'),
      useFallbackTranslations: true,
      // child: MultiProvider(
      //   providers: [
      //     ChangeNotifierProvider(create: (context) => IncomeProvider()),
      //     ChangeNotifierProvider(create: (context) => ExpenseProvider()),
      //     ChangeNotifierProvider(create: (context) => BudgetRepository()),
      //     ChangeNotifierProvider(create: (context) => BudgetLimits()),
      //     ChangeNotifierProvider(create: (_) => DropdownProvider()),
      //     ChangeNotifierProvider(create: (_) => CategoryProvider()),
      //   ],
        child: const MyApp(),
      ),
    );
  }, (dynamic error, dynamic stack) {});
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: AppRouter.phone,
      onGenerateRoute: AppRouter.onGenerateRoute,
      debugShowCheckedModeBanner: false,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      theme: ThemeData(
        primaryColor: primaryColor,
        fontFamily: 'SpaceGrotesk',
      ),
    );
  }
}