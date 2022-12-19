import 'package:base_app/src/config/route_constants.dart';
import 'package:base_app/src/data/model/owner.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../config/app_theme.dart';

class OwnerCard extends StatelessWidget {
  const OwnerCard({
    required this.owner,
    this.routeAble = true,
    this.isFollow,
    this.onFollow,
    this.routeAction,
    Key? key,
  }) : super(key: key);

  final Owner owner;
  final bool routeAble;
  final RxBool? isFollow;
  final VoidCallback? onFollow;
  final VoidCallback? routeAction;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => routeAble
          ? Get.toNamed(RouteConstants.ownerPageRoute, arguments: owner)
          : null,
      child: Card(
        child: Container(
          width: context.width,
          padding: const EdgeInsets.all(20.0),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.white),
            image: DecorationImage(
                image: NetworkImage(owner.items.first.image),
                fit: BoxFit.cover),
            borderRadius: BorderRadius.circular(5),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(color: Colors.white),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: Image.network(
                    owner.profile,
                    height: 75,
                    width: 80,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              AppTheme.spaceHeight12,
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    owner.name,
                    style: context.textTheme.subtitle1!
                        .copyWith(color: Colors.white, shadows: const [
                      Shadow(
                        color: Colors.black,
                        blurRadius: 0.5,
                      ),
                      Shadow(
                          color: Colors.black,
                          offset: Offset(1, 1),
                          blurRadius: 2),
                    ]),
                  ),
                  AppTheme.spaceWidth8,
                  Text(
                    "작품 수 ${owner.items.length}",
                    style: context.textTheme.caption!
                        .copyWith(color: Colors.white, shadows: const [
                      Shadow(
                        color: Colors.black,
                        blurRadius: 0.5,
                      ),
                      Shadow(
                          color: Colors.black,
                          offset: Offset(1, 1),
                          blurRadius: 2),
                    ]),
                  )
                ],
              ),
              AppTheme.spaceHeight4,
              SizedBox(
                width: context.width,
                child: Row(
                  children: [
                    Text(
                      "장르",
                      style: context.textTheme.bodyText1!
                          .copyWith(color: Colors.white, shadows: const [
                        Shadow(
                          color: Colors.black,
                          blurRadius: 0.5,
                        ),
                        Shadow(
                            color: Colors.black,
                            offset: Offset(1, 1),
                            blurRadius: 2),
                      ]),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
