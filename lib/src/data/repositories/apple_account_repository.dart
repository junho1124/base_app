
import 'package:firebase_auth/firebase_auth.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';

import '../../domain/repositories/login_repository_impl.dart';
import '../../core/utils/logger.dart';
import '../../core/utils/my_toast.dart';


class AppleAccountService implements AccountRepositoryImpl {
  final _fAuth = FirebaseAuth.instance;
  final _authProvider = OAuthProvider("apple.com");

  @override
  Future<UserCredential?> login(data) async {
    final appleCredential = await SignInWithApple.getAppleIDCredential(scopes: [
      AppleIDAuthorizationScopes.email,
      AppleIDAuthorizationScopes.fullName,
    ]);

    if(appleCredential.identityToken != null) {
      final oauthCredential = _authProvider.credential(
        idToken: appleCredential.identityToken,
        accessToken: appleCredential.authorizationCode,
      );
      return await _fAuth.signInWithCredential(oauthCredential);
    } else {
      MyToast.showToast("애플 로그인 에러");
      Log.d(appleCredential.state);
      return null;
    }
  }

  @override
  Future<bool> logout() {
    throw UnimplementedError();
  }

  @override
  Future<UserCredential?> signup(data) {
    throw UnimplementedError();
  }

  @override
  Future<bool> withDraw() {
    throw UnimplementedError();
  }

}