import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../data/model/user.dart';
import '../../config/app_theme.dart';
import 'user_avartar_module.dart';

class AccountBannerModule extends StatelessWidget {
  const AccountBannerModule({
    Key? key,
    required this.user,
  }) : super(key: key);

  final User user;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Row(
        children: [
          UserAvatarModule(
            user: user,
            size: 50,
            selectedProfile: "",
          ),
          AppTheme.spaceWidth12,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "${user.name}님",
                style: context.textTheme.subtitle2,
              ),
              Text(
                user.email,
                style: context.textTheme.bodyText1!.copyWith(
                    color: Colors.black54, fontWeight: FontWeight.normal),
              )
            ],
          ),
          AppTheme.spacer,
          InkWell(
            onTap: () => Get.toNamed(""),
            child: const Icon(
              Icons.arrow_forward_ios_sharp,
              size: 20,
            ),
          )
        ],
      ),
    );
  }
}
