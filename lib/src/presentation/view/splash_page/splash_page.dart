import 'package:base_app/src/presentation/view_model/splash_view_model.dart';
import 'package:base_app/src/presentation/widget/my_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SplashViewModel>(
      init: SplashViewModel(),
      builder: (vm) {
        return Scaffold(
          body: Center(
            child: FlutterLogo(),
          ),
        );
      }
    );
  }
}
