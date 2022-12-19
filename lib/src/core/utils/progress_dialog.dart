import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../config/app_theme.dart';

class ProgressDialog {

  static final RxBool _progress = false.obs;
  static bool _isBind = false;

  static void bind() {
    _isBind = true;
    _progress.listen((data) {
      if(data) {
        Get.dialog(AppTheme.progress,
          barrierDismissible: false,
          barrierColor: Colors.transparent,
        );
      } else {
        if(Get.isDialogOpen ?? false) {
          Get.back();
        }
      }
    });
  }

  static void show() {
    assert(_isBind);
    _progress.trigger(true);
  }

  static void close() {
    assert(_isBind);
    _progress.trigger(false);
  }
}
