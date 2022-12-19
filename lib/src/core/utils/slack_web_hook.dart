import 'dart:convert';
import 'dart:io';

import 'package:base_app/src/config/app_constants.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:http/http.dart' as http;

import '../../../env/environment.dart';

class SlackWebHook {
  static final _deviceInfo = DeviceInfoPlugin();

  static Future sendMessage<U>(String text, {U? user}) async {
    AndroidDeviceInfo? androidDeviceInfo;
    IosDeviceInfo? iosDeviceInfo;
    if (Platform.isIOS) {
      iosDeviceInfo = await _deviceInfo.iosInfo;
    } else {
      androidDeviceInfo = await _deviceInfo.androidInfo;
    }
    final payLoad = {
      "blocks": [
        {"type": "divider"},
        {
          "type": "section",
          "text": {"type": "mrkdwn", "text": "<!channel>❗️에러 봇❗"}
        },
        {"type": "divider"},
        {
          "type": "section",
          "block_id": "section1",
          "text": {
            "type": "mrkdwn",
            "text": ":bug: Error report :bug: \n $text"
          }
        },
        {"type": "divider"},
        {
          "type": "section",
          "block_id": "section2",
          "text": {
            "type": "mrkdwn",
            "text":
                // "${user != null ? "user \nuid: ${user.uid} \nid: ${user.uid} \n nickname: ${user.nickname}" : ""}\n\nDeviceInfo: ${Platform.isIOS ? "model : ${iosDeviceInfo!.model} version: ${iosDeviceInfo.systemVersion}" : "model: ${androidDeviceInfo!.model} sdk: ${androidDeviceInfo.version.sdkInt}"}\n\nApp Version: ${Environment.currentAppVersion}"
                "DeviceInfo: ${Platform.isIOS ? "model : ${iosDeviceInfo!.model} version: ${iosDeviceInfo.systemVersion}" : "model: ${androidDeviceInfo!.model} sdk: ${androidDeviceInfo.version.sdkInt}"}\n\nApp Version: ${Environment.currentAppVersion}"
          },
          "accessory": {
            "type": "image",
            "image_url":
                "https://www.thewordcracker.com/wp-content/uploads/2018/03/error.jpg",
            "alt_text": ""
          }
        }
      ]
    };
    await http.post(Uri.parse(AppConstants.slackAPI),
        body: jsonEncode(payLoad),
        headers: {"Content-Type": "application/json"});
  }
}
