import 'package:flutter/material.dart';
import 'package:get/get.dart';

AppBar myAppBar(
    {required BuildContext context,
    required String pageName,
    List<Widget>? actions}) {
  return AppBar(
    title: Text(
      pageName,
      style: context.textTheme.bodyText1,
    ),
    centerTitle: true,
    backgroundColor: Colors.white,
    actions: actions,
    elevation: 1,
  );
}
