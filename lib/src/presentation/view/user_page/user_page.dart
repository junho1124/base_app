import 'package:base_app/src/data/model/user.dart';
import 'package:base_app/src/presentation/widget/my_app_bar.dart';
import 'package:flutter/material.dart';

class UserPage extends StatelessWidget {
  const UserPage({
    required this.user,
    Key? key,
  }) : super(key: key);

  final User user;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(context: context, pageName: "상품 페이지"),
      body: Column(
        children: user.toJson().entries.map((e) => Text("${e.key}: ${e.value}")).toList(),
      ),
    );
  }
}
