import 'package:firebase_auth/firebase_auth.dart';

abstract class AccountRepositoryImpl<T> {
  Future<UserCredential?> login(T data) async => await Future.value();

  Future<UserCredential?> signup(T data) async => Future.value();

  Future<bool> logout() async => await Future.value(true);

  Future<bool> withDraw() async => await Future.value(true);
}
