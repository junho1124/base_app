import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Buttons {
  static Widget defaultButton(
      {required String title,
      required double width,
      double? height,
      VoidCallback? onTap,
      Color? color}) {
    return InkWell(
      onTap: () => onTap?.call(),
      child: Container(
        width: width,
        height: height,
        padding:
            height == null ? const EdgeInsets.symmetric(vertical: 8) : null,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Get.theme.colorScheme.tertiary,
        ),
        child: Center(
          child: Text(
            title,
            style:
                Get.textTheme.bodyText1!.copyWith(color: color ?? Colors.white),
          ),
        ),
      ),
    );
  }
}
