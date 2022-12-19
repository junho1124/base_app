import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../config/app_theme.dart';

Future confirmDialog({
  required String title,
  required Widget content,
  String? confirm,
  String? cancel,
  bool choice = false,
  required Function() onConfirm,
  VoidCallback? onCancel,
}) async {
  await Get.defaultDialog(
      radius: 8,
      title: title,
      titleStyle: Get.textTheme.subtitle1,
      content: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32),
        child: content,
      ),
      confirm: Column(
        children: [
          InkWell(
              onTap: () async {
                Get.back();
                await onConfirm();
              },
              child: Container(
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                ),
                child: Center(
                    child: Text(
                  confirm ?? "확인",
                  style: Get.textTheme.bodyText1!.copyWith(color: Colors.white),
                )),
              )),
          AppTheme.spaceHeight8,
          InkWell(
              onTap: () {
                Get.back();
                onCancel?.call();
              },
              child: Container(
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: choice ? Get.theme.colorScheme.onPrimaryContainer : Get.theme.colorScheme.primaryContainer),
                child: Center(
                    child: Text(
                  cancel ?? "취소",
                  style: Get.textTheme.bodyText1!.copyWith(color: Colors.white),
                )),
              ))
        ],
      ));
}

Future simpleDialog({
  required String title,
  required Widget contents,
  String? confirmText = "확인",
  VoidCallback? onConfirm,
}) async {
  await Get.defaultDialog(
    title: title,
    content: contents,
    textConfirm: confirmText,
    onConfirm: () => onConfirm == null ? Get.back() : onConfirm.call(),
  );
}
