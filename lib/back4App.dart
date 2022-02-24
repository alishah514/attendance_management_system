import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';
import 'main.dart';

class back4App {
  static final String _baseUrl = "https://parseapi.back4App.com/classes/";

  static Future<void> initParse() async {
    final keyApplicationId = "Nt443CzX70ZjhKpiAHfa5guC9T1Y0vgDPIZdnlVD";
    final keyClientKey = "Fm8rv83IUrA7DtkpQKUMYKAV4ygaDQYYdkw242O2";
    final keyParseServerUrl = "https://parseapi.back4app.com";

    await Parse().initialize(keyApplicationId, keyParseServerUrl,
        clientKey: keyClientKey, autoSendSessionId: true);

    var attendance_management_system =
        ParseObject('attendance_management_system')
          ..set('message', 'connnected succesfully');
    await attendance_management_system.save();
  }
}
