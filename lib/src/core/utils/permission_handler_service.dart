import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

import 'dialogs.dart';

class PermissionHandlerService {
  Future requestAllPermission() async {
    await requestCamera();
    await requestPhotos();
  }

  Future requestCamera() async {
    var cameraStatus = await Permission.camera.status;
    switch (cameraStatus) {
      case PermissionStatus.denied:
        await Permission.camera.request();
        break;
      case PermissionStatus.granted:
        break;
      case PermissionStatus.restricted:
        await confirmDialog(
          title: "카메라 권한 거부 됨",
          content: const Text(
            "원활한 앱 사용을 위해 카메라 권한이 필요합니다.\n설정 화면으로 이동 하시겠습니까?",
            textAlign: TextAlign.center,
          ),
          onConfirm: () async => await openAppSettings().then((value) async => await requestCamera()),
        );
        break;
      case PermissionStatus.limited:
        break;
      case PermissionStatus.permanentlyDenied:
        await confirmDialog(
          title: "카메라 권한 거부 됨",
          content: const Text(
            "원활한 앱 사용을 위해 카메라 권한이 필요합니다.\n설정 화면으로 이동 하시겠습니까?",
            textAlign: TextAlign.center,
          ),
          onConfirm: () async => await openAppSettings().then((value) async => await requestCamera()),
        );
        break;
    }
  }

  Future requestPhotos() async {
    var galleryStatus = await Permission.photos.status;
    switch(galleryStatus) {
      case PermissionStatus.denied:
        await Permission.photos.request();
        break;
      case PermissionStatus.granted:
        break;
      case PermissionStatus.restricted:
        await confirmDialog(
          title: "사진 접근 권한 거부 됨",
          content: const Text(
            "원활한 앱 사용을 위해 사진 권한이 필요합니다.\n설정 화면으로 이동 하시겠습니까?",
            textAlign: TextAlign.center,
          ),
          onConfirm: () async => await openAppSettings().then((value) async => await requestPhotos()),
        );
        break;
      case PermissionStatus.limited:
        break;
      case PermissionStatus.permanentlyDenied:
        await confirmDialog(
          title: "사진 접근 권한 거부 됨",
          content: const Text(
            "원활한 앱 사용을 위해 사진 권한이 필요합니다.\n설정 화면으로 이동 하시겠습니까?",
            textAlign: TextAlign.center,
          ),
          onConfirm: () async => await openAppSettings().then((value) async => await requestPhotos()),
        );
        break;
    }
  }
}
