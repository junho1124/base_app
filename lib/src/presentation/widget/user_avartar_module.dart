import 'dart:io';

import 'package:base_app/src/data/model/user.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UserAvatarModule extends StatelessWidget {
  const UserAvatarModule({
    Key? key,
    required this.user,
    required this.size,
    this.selectedProfile,
  }) : super(key: key);

  final User user;
  final double size;
  final String? selectedProfile;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: size,
        width: size,
        child: CircleAvatar(
          backgroundColor: Colors.black12,
          backgroundImage:
              user.profile != "" ? NetworkImage(user.profile) : null,
          foregroundImage: selectedProfile != null && selectedProfile != ""
              ? FileImage(File(selectedProfile!))
              : null,
          child: user.profile == "" || selectedProfile == null
              ? Center(
                  child: Text(
                  "?",
                  style: context.textTheme.headline1!
                      .copyWith(color: Colors.white),
                ))
              : null,
        ));
  }
}
