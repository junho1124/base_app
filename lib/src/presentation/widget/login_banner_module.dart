import 'package:base_app/src/config/route_constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../config/app_theme.dart';

class LoginBannerModule extends StatelessWidget {
  const LoginBannerModule({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Get.toNamed(RouteConstants.loginPageRoute),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "로그인 / 회원가입",
                  style: context.textTheme.subtitle2!,
                ),
                Text(
                  "첫 가입 시 다양한 혜택 드립니다.",
                  style: context.textTheme.bodyText1!
                      .copyWith(color: Colors.black54),
                ),
              ],
            ),
            AppTheme.spacer,
            const Icon(
              Icons.arrow_forward_ios_sharp,
              size: 20,
            )
          ],
        ),
      ),
    );
  }
}
