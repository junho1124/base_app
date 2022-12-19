import 'package:base_app/src/core/utils/slack_web_hook.dart';
import 'package:base_app/src/core/utils/token_repository.dart';
import 'package:firebase_auth/firebase_auth.dart' as f;
import 'package:flutter/services.dart';
import 'package:kakao_flutter_sdk_user/kakao_flutter_sdk_user.dart';

import '../../domain/repositories/login_repository_impl.dart';
import '../../core/utils/logger.dart';
import '../../core/utils/my_toast.dart';

class KakaoAccountService implements AccountRepositoryImpl {
  final _userRepository = TokenRepository();
  final f.FirebaseAuth _fAuth = f.FirebaseAuth.instance;

  @override
  Future<f.UserCredential?> login(data) async {
    final accessToken = await kakaoSocialLogin();
    if (accessToken != null) {
      final kUser = await UserApi.instance.me();
      final uid = "kakao:${kUser.id}";
      final fToken = await _userRepository.getCustomToken(uid);
      final credential = await _fAuth.signInWithCustomToken(fToken);
      if (credential.user != null) {
        return credential;
      } else {
        try {
          await _fAuth.currentUser!.updateEmail(kUser.kakaoAccount!.email!);
          await _fAuth.currentUser!
              .updateDisplayName(kUser.kakaoAccount!.profile!.nickname!);
          await _fAuth.currentUser!.updatePhotoURL(
              kUser.kakaoAccount!.profile!.isDefaultImage!
                  ? ""
                  : kUser.kakaoAccount!.profile!.profileImageUrl!);
          return credential;
        } on f.FirebaseAuthException catch (e) {
          if (e.message!.contains("email")) {
            await logout();
            await _fAuth.currentUser?.delete();
            await _fAuth.signOut();
            Log.d(e.message);
            SlackWebHook.sendMessage(e.message ?? "");
            MyToast.showToast("이미 가입된 이메일입니다.");
          }
          rethrow;
        }
      }
    } else {
      return null;
    }
  }

  Future<String?> kakaoSocialLogin() async {
    OAuthToken? token;
    bool isInstalled = await isKakaoTalkInstalled();
    if (isInstalled) {
      MyToast.showToast(isInstalled.toString());
      try {
        token = await UserApi.instance.loginWithKakaoTalk();
      } catch (e) {
        if (e is PlatformException && e.code == "CANCELED") {
          Log.d(e);
          MyToast.showToast("로그인 취소 됨");
          SlackWebHook.sendMessage(e.toString());
        }
        try {
          token = await UserApi.instance.loginWithKakaoAccount();
        } catch (e) {
          Log.d(e);
          SlackWebHook.sendMessage(e.toString());
          MyToast.showToast("카카오 로그인 오류 $e");
          rethrow;
        }
        rethrow;
      }
    } else {
      try {
        token = await UserApi.instance.loginWithKakaoAccount();
      } catch (e) {
        Log.d(e);
        SlackWebHook.sendMessage(e.toString());
        MyToast.showToast("카카오 로그인 오류 $e");
        rethrow;
      }
    }

    await DefaultTokenManager().setToken(token);

    return token.accessToken;
  }

  @override
  Future<bool> logout() async {
    try {
      await UserApi.instance.logout();
      return true;
    } catch (e) {
      Log.d(e);
      MyToast.showToast("카카오 로그아웃 에러: $e");
      return false;
    }
  }

  @override
  Future<f.UserCredential?> signup(data) {
    throw UnimplementedError();
  }

  @override
  Future<bool> withDraw() async {
      await UserApi.instance.unlink();
      return true;
  }
}
