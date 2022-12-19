import 'package:base_app/src/config/route_constants.dart';
import 'package:base_app/src/presentation/view_model/main_view_model.dart';
import 'package:base_app/src/presentation/widget/buttons.dart';
import 'package:base_app/src/presentation/widget/my_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MainViewModel>(
        init: MainViewModel(),
        builder: (vm) {
          return Scaffold(
            appBar: myAppBar(context: context, pageName: "메인 페이지"),
            body: Column(
              children: [
                Text("메인화면"),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Buttons.defaultButton(
                          onTap: () => vm.route(RouteConstants.loginPageRoute),
                          title: "로그인 페이지",
                          width: context.width),
                      Buttons.defaultButton(
                          onTap: () => vm.route(RouteConstants.userPageRoute),
                          title: "유저 페이지",
                          width: context.width),
                      Buttons.defaultButton(
                          onTap: () => vm.route(RouteConstants.ownerPageRoute),
                          title: "오너 페이지",
                          width: context.width),
                      Buttons.defaultButton(
                          onTap: () =>
                              vm.route(RouteConstants.productPageRoute),
                          title: "상품 페이지",
                          width: context.width),
                    ],
                  ),
                )
              ],
            ),
          );
        });
  }
}
