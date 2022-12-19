import 'package:base_app/src/config/route_constants.dart';
import 'package:base_app/src/core/utils/result.dart';
import 'package:base_app/src/data/model/base/transmissible_data.dart';
import 'package:firebase_dynamic_links/firebase_dynamic_links.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:share_plus/share_plus.dart';

import '../../../env/environment.dart';
import 'logger.dart';
import 'my_toast.dart';
import 'progress_dialog.dart';

class LinkShareService {
  static final _dynamicLinks = FirebaseDynamicLinks.instance;

  static Future shareLink(TransmissibleData data) async {
    ProgressDialog.bind();
    ProgressDialog.show();
    final RenderBox box = Get.context!.findRenderObject() as RenderBox;
    final result = await _createShortLink(data);
    result.when(
      success: (link) async {
        ProgressDialog.close();
        await Share.share(link.shortUrl.toString(),
            sharePositionOrigin: box.localToGlobal(Offset.zero) & box.size);
      },
      error: (e) {
        Log.d(e);
        MyToast.showToast("공유 링크 생성 오류");
      },
    );
  }

  static Future listenDynamicLink() async {
    _dynamicLinks.onLink.listen((event) {
      switch (event.link.path) {

        /// 다이나믹 링크로 넘어온 path 값에 따라 route
      }
    });
  }

  static Future<Result<ShortDynamicLink>> _createShortLink(
      TransmissibleData data) async {
    String path = "";
    String queryParams = "";
    String imageUrl = "";
    String message = "";
    String packagePrefix = "";

    switch (Environment.buildType) {
      case BuildType.dev:
        packagePrefix = ".dev";
        break;
      case BuildType.stg:
        packagePrefix = ".stg";
        break;
      case BuildType.prod:
        break;
    }

    /// 공유하려는 정보에 따라
    data.when(
      user: (user) {
        path = RouteConstants.userPageRoute;
        queryParams = "id=${user.id}";
        imageUrl = user.profile;
        message = user.name;
      },
      owner: (owner) {
        path = RouteConstants.userPageRoute;
        queryParams = "id=${owner.id}";
        imageUrl = owner.items.first.image;
        message = owner.name;
      },
      product: (product) {
        path = RouteConstants.userPageRoute;
        queryParams = "id=${product.id}";
        imageUrl = product.image;
        message = product.name;
      },
    );

    final url = Uri.parse(
        "https://havart${packagePrefix.replaceAll(".", "")}.page.link$path?$queryParams");
    final DynamicLinkParameters parameters = DynamicLinkParameters(
        link: url,
        uriPrefix: "https://havart.page.link",
        androidParameters: AndroidParameters(
            packageName: Environment.bundleId,
            minimumVersion: 13),
        iosParameters: IOSParameters(
            bundleId: Environment.bundleId,
            minimumVersion: "1.0.3"),
        socialMetaTagParameters: SocialMetaTagParameters(
            title: "HAVART",
            description: message,
            // "${_userState.value.isLogin ? "${_userState.value.user!.nickname}님이 " : ""}$message",
            imageUrl: Uri.parse(imageUrl)),
        navigationInfoParameters:
            const NavigationInfoParameters(forcedRedirectEnabled: true));

    try {
      final shortLink = await _dynamicLinks.buildShortLink(parameters);
      return Result.success(shortLink);
    } catch (e) {
      Log.d(e);
      return Result.error(e);
    }
  }
}
