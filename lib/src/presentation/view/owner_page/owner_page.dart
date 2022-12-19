import 'package:base_app/src/data/model/owner.dart';
import 'package:base_app/src/presentation/widget/my_app_bar.dart';
import 'package:flutter/material.dart';

class OwnerPage extends StatelessWidget {
  const OwnerPage({
    required this.owner,
    Key? key,
  }) : super(key: key);

  final Owner owner;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(context: context, pageName: "판매자/소유자 페이지"),
      body: Column(
        children: owner.toJson().entries.map((e) => Text("${e.key}: ${e.value}")).toList(),
      ),
    );
  }
}
