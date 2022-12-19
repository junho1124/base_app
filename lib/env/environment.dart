import 'dart:io';
import 'package:base_app/firebase_options.dart';
import 'package:base_app/src/config/app_constants.dart';
import 'package:dio/dio.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter/material.dart';
import 'package:kakao_flutter_sdk_user/kakao_flutter_sdk_user.dart';
import 'package:package_info_plus/package_info_plus.dart';

import '../app.dart';
import '../src/core/utils/hive_service.dart';
import '../src/core/utils/logger.dart';

enum BuildType { dev, stg, prod }

class Environment {
  static Environment? _instance;

  static Environment get instance => _instance!;

  static final _remoteConfig = FirebaseRemoteConfig.instance;

  final BuildType? _buildType;

  static BuildType get buildType => instance._buildType!;

  static final Dio dio = Dio();

  /// 현재 build flavor 에 맞는 서버의 정보를 전달
  static String _apiUrl() {
    switch (buildType) {
      case BuildType.dev:
        return AppConstants.baseApi;
      case BuildType.stg:
        return AppConstants.baseApi;
      case BuildType.prod:
        return AppConstants.baseApi;
      default:
        return AppConstants.baseApi;
    }
  }

  static String get apiUrl => _apiUrl();

  // static int get remoteConfigVersion => _remoteConfigVersion();
  //
  // /// remoteConfig 에서 최신 버전정보를 불러옴
  // static int _remoteConfigVersion() {
  //   return Platform.isIOS
  //       ? int.parse(_remoteConfig.getString("current_version_ios"))
  //       : int.parse(_remoteConfig.getString("current_version_android"));
  // }
  //
  // static bool get forceUpdate => _forceUpdate();
  //
  // /// remoteConfig 에서 강제 없데이트 여부를 불러옴
  // static bool _forceUpdate() {
  //   return _remoteConfig.getBool("force_update");
  // }
  //
  static late int currentAppVersion;
  static late String bundleId;


  ///현재 Device 에 설치된 앱의 버전 정보를 불러옴
  Future _getAppInfo() async {
    final info = await PackageInfo.fromPlatform();
    Log.d(info.buildNumber);

    currentAppVersion = int.parse(info.buildNumber);
    bundleId = info.packageName;
  }

  static String _getKakaoNativeAppKey() {
    switch (buildType) {
      case BuildType.dev:
        return "78817df2ec6454d4c2275ab28d3c59cf";
      case BuildType.stg:
        return "1d87f161283cfb71ec0fbb2f3aa518e1";
      case BuildType.prod:
        return "286c8fc3883ab6e2cd782e9a5440c5cb";
    }
  }

  static String get kakaoNativeAppKey => _getKakaoNativeAppKey();

  // static FirebaseOptions getFireBasePlatformOptions() {
  //   switch (buildType) {
  //     case BuildType.dev:
  //       return DefaultFirebaseOptions.currentPlatformDev;
  //     case BuildType.stg:
  //       return DefaultFirebaseOptions.currentPlatformStg;
  //     case BuildType.prod:
  //       return DefaultFirebaseOptions.currentPlatform;
  //   }
  // }



  const Environment._internal(this._buildType);

  /// buildType 객체를 받아 해당 flavor 로 앱을 실행
  factory Environment.newInstance(BuildType? buildType) {
    assert(buildType != null);

    _instance = Environment._internal(buildType);

    return _instance!;
  }

  /// 앱 실행 전 필수 초기화 코드
  void run() async {
    WidgetsFlutterBinding.ensureInitialized();
    KakaoSdk.init(
      nativeAppKey: kakaoNativeAppKey,
    );
    await Firebase.initializeApp(
        options: DefaultFirebaseOptions.currentPlatform);
    await HiveService.init();
    Log.init();
    await _getAppInfo();
    await _remoteConfig.setConfigSettings(RemoteConfigSettings(
        fetchTimeout: const Duration(minutes: 1),
        minimumFetchInterval: _buildType! != BuildType.prod
            ? const Duration(minutes: 1)
            : const Duration(hours: 1)));
    await _remoteConfig.setDefaults({
      "current_version_android": 1,
      "current_version_ios": 1,
      "force_update": 1,
      "product_server": "http://10.0.2.2:3000"
    });
    runApp(const App());
  }
}
