import 'package:flutter/material.dart';
import 'package:flutter_application_2/view/custom_widget/my_theme.dart';
import 'package:flutter_application_2/view/welcome/welcome_page.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';

main(List<String> args) async {
  runApp(const MyApp());
  final keyApplicationId = "9s20xW7zGmiA3yIUG7fbV0nfL1hBFyfxw0KaEAr4";
  final keyClientKey = "5zX6MLR0LOvRUc64hqj30Sa3Mnedssj6qOH37Pnw";
  final keyParseServerUrl = "https://parseapi.back4app.com";

  await Parse().initialize(keyApplicationId, keyParseServerUrl,
      clientKey: keyClientKey, autoSendSessionId: true);
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
