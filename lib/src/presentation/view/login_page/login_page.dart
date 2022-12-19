import '../../widget/my_app_bar.dart';
import '../../view_model/login_view_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginViewModel>(
      init: LoginViewModel(),
      builder: (vm) {
        return Scaffold(
          appBar: myAppBar(context: context, pageName: "로그인"),
          body: Column(
            children: [

            ],
          ),
        );
      }
    );
  }
}
