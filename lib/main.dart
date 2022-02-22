import 'package:flutter/material.dart';
import 'package:flutter_application_2/view/custom_widget/my_theme.dart';
import 'package:flutter_application_2/view/welcome/welcome_page.dart';
import 'package:get/get_navigation/get_navigation.dart';

main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      home: const WelcomePage(),
    );
  }
}
