import 'package:base_app/color_schemes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppTheme {
  static ThemeData buildLightTheme(ThemeData themeData) {
    return themeData.copyWith(
        textTheme: _textTheme(themeData.textTheme),
        useMaterial3: true,
        colorScheme: lightColorScheme
        );
  }

  static TextTheme _textTheme(TextTheme base) {
    return base.copyWith(
      headline1: base.headline1!.copyWith(
        fontSize: 30,
        fontWeight: FontWeight.bold,
        color: Colors.black,
        letterSpacing: -0.04,
        fontFamily: "Noto_Sans_KR",
      ),
      headline2: base.headline1!.copyWith(
        fontSize: 30,
        color: Colors.black,
        letterSpacing: -0.04,
        fontFamily: "Noto_Sans_KR",
      ),
      bodyText1: base.bodyText1!.copyWith(
        fontSize: 18,
        color: Colors.black,
        fontWeight: FontWeight.bold,
        letterSpacing: -0.04,
        fontFamily: "Noto_Sans_KR",
      ),
      bodyText2: base.bodyText2!.copyWith(
        fontSize: 18,
        color: Colors.black,
        letterSpacing: -0.04,
        fontFamily: "Noto_Sans_KR",
      ),
      headline3: base.headline3!.copyWith(
        fontSize: 16,
        fontWeight: FontWeight.bold,
        letterSpacing: -0.04,
        fontFamily: "Noto_Sans_KR",
        color: Colors.black,
      ),
      headline4: base.headline4!.copyWith(
        fontSize: 16,
        fontWeight: FontWeight.normal,
        letterSpacing: -0.04,
        fontFamily: "Noto_Sans_KR",
      ),
      subtitle1: base.subtitle1!.copyWith(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        letterSpacing: -0.04,
        fontFamily: "Noto_Sans_KR",
      ),
      subtitle2: base.subtitle2!.copyWith(
        fontSize: 20,
        fontWeight: FontWeight.normal,
        letterSpacing: -0.04,
        fontFamily: "Noto_Sans_KR",
      ),
      button: base.button!.copyWith(
        fontSize: 12,
        letterSpacing: -0.04,
        fontFamily: "Noto_Sans_KR",
      ),
      caption: base.caption!.copyWith(
        fontSize: 12,
        color: Colors.black,
        letterSpacing: -0.04,
        fontFamily: "Noto_Sans_KR",
      ),
    );
  }

  static const Widget spacer = Expanded(child: SizedBox());

  static const SizedBox spaceWidth100 = SizedBox(width: 100);
  static const SizedBox spaceWidth50 = SizedBox(width: 50);
  static const SizedBox spaceWidth4 = SizedBox(width: 4);
  static const SizedBox spaceWidth8 = SizedBox(width: 8);
  static const SizedBox spaceWidth12 = SizedBox(width: 12);
  static const SizedBox spaceWidth16 = SizedBox(width: 16);
  static const SizedBox spaceWidth20 = SizedBox(width: 20);

  static const SizedBox spaceHeight100 = SizedBox(height: 100);
  static const SizedBox spaceHeight50 = SizedBox(height: 50);
  static const SizedBox spaceHeight4 = SizedBox(height: 4);
  static const SizedBox spaceHeight8 = SizedBox(height: 8);
  static const SizedBox spaceHeight12 = SizedBox(height: 12);
  static const SizedBox spaceHeight16 = SizedBox(height: 16);
  static const SizedBox spaceHeight20 = SizedBox(height: 20);
  static const SizedBox spaceHeight30 = SizedBox(height: 30);

  static const Widget progress = Center(
      child: CircularProgressIndicator(
  ));
  static const Widget divider = Divider(height: 0);
  static Widget greyContainer = Container(
    width: Get.width,
    height: 10,
  );
}
