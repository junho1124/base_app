import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../../domain/repositories/login_repository_impl.dart';
import '../../core/utils/logger.dart';
import '../../core/utils/my_toast.dart';

class GoogleAccountService implements AccountRepositoryImpl {
  final _googleSignIn = GoogleSignIn();
  final _fAuth = FirebaseAuth.instance;

  @override
  Future<UserCredential?> login(data) async {
    try {
      final account = await _googleSignIn.signIn();
      if (account != null) {
        final googleAuth = await account.authentication;
        final credential = GoogleAuthProvider.credential(
            idToken: googleAuth.idToken, accessToken: googleAuth.accessToken);
        final authResult = await _fAuth.signInWithCredential(credential);
        return authResult;
      } else {
        MyToast.showToast("구글 로그인 정보 없음");
        return null;
      }
    } catch (e) {
      Log.d(e);
      MyToast.showToast(e.toString());
      return null;
    }
  }

  @override
  Future<bool> logout() async {
    try {
      await _googleSignIn.signOut();
      return true;
    } catch (e) {
      Log.d(e);
      return false;
    }
  }

  @override
  Future<UserCredential> signup(data) {
    // TODO: implement signup
    throw UnimplementedError();
  }

  @override
  Future<bool> withDraw() async {
    try {
      await _googleSignIn.disconnect();
      return true;
    } catch (e) {
      Log.d(e);
      return false;
    }
  }
}
