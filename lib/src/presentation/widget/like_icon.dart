import 'package:base_app/src/config/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import '/src/config/app_theme.dart';

class LikeIcon extends StatelessWidget {
  const LikeIcon({
    Key? key,
    required this.likeItem,
    required this.isLike,
    required this.likeCount,
  }) : super(key: key);

  final int likeCount;
  final RxBool isLike;
  final VoidCallback likeItem;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => likeItem.call(),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
        child: Column(
          children: [
            Obx(() => Icon(Icons.favorite, color: isLike.isTrue ? Get.theme.primaryColor : Colors.white,)),
            Text(
              NumberFormat.compact().format(likeCount),
              style: context.textTheme.caption!
                  .copyWith(fontWeight: FontWeight.bold, color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}
