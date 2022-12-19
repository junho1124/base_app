import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Tiles {
  static InkWell buildAccountTile({
    required BuildContext context,
    required String title,
    required VoidCallback action,
  }) {
    return InkWell(
      onTap: () => action.call(),
      child: SizedBox(
        width: context.width,
        child: Text(
          title,
          style: context.textTheme.bodyText2,
        ),
      ),
    );
  }
}
