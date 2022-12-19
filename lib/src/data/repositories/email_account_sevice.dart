import 'package:firebase_auth/firebase_auth.dart';

import '../../domain/entities/email_login_input.dart';
import '../../domain/repositories/login_repository_impl.dart';
import '../../core/utils/logger.dart';


class EmailAccountService implements AccountRepositoryImpl<EmailLoginInput> {
  final FirebaseAuth _fAuth = FirebaseAuth.instance;

  @override
  Future<UserCredential?> login(EmailLoginInput data) async {
    try {
      final credential = await _fAuth.signInWithEmailAndPassword(
          email: data.email, password: data.password);
      return credential;
    } on FirebaseAuthException catch (e) {
      Log.d(e);
      return null;
    }
  }

  @override
  Future<UserCredential?> signup(EmailLoginInput data) async {
    try {
      await _fAuth.createUserWithEmailAndPassword(
          email: data.email, password: data.password);
      final credential = await _fAuth.signInWithEmailAndPassword(
          email: data.email, password: data.password);
      return credential;
    } catch(e) {
      rethrow;
    }
  }

  @override
  Future<bool> logout() async {
    throw UnimplementedError();
  }

  @override
  Future<bool> withDraw() async {
    throw UnimplementedError();
  }
}
