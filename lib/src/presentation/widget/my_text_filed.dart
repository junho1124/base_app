import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../../config/app_theme.dart';

class MyTextField extends StatelessWidget {
  const MyTextField({
    Key? key,
    this.title,
    required this.hintText,
    required this.controller,
    this.inputFormatters,
    this.errorText,
    this.keyboardType,
    this.readOnly,
    this.onChanged,
    this.suffixIcon,
    this.obscureText,
    this.border,
  }) : super(key: key);

  final String? title;
  final String hintText;
  final TextEditingController controller;
  final String? errorText;
  final List<TextInputFormatter>? inputFormatters;
  final TextInputType? keyboardType;
  final bool? readOnly;
  final void Function(String)? onChanged;
  final Widget? suffixIcon;
  final bool? obscureText;
  final InputBorder? border;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (title != null)
          Text(
            title!,
            style: context.textTheme.bodyText1,
          ),
        TextFormField(
          controller: controller,
          decoration: InputDecoration(
              hintText: hintText,
              enabledBorder: border == null
                  ? const UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey))
                  : null,
              focusedBorder: border == null
                  ? const UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey))
                  : null,
              hintStyle: context.textTheme.button!.copyWith(color: Colors.grey),
              border: border,
              errorText: errorText,
              suffixIcon: suffixIcon),
          inputFormatters: inputFormatters,
          keyboardType: keyboardType,
          readOnly: readOnly ?? false,
          onChanged: onChanged,
          obscureText: obscureText ?? false,
          cursorColor: Get.theme.primaryColor,
        )
      ],
    );
  }
}
