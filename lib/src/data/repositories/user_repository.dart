import 'package:base_app/env/environment.dart';
import 'package:base_app/src/core/utils/hive_service.dart';
import 'package:base_app/src/core/utils/logger.dart';
import 'package:base_app/src/core/utils/result.dart';
import 'package:base_app/src/data/data_source/local/dao.dart';
import 'package:base_app/src/data/data_source/remote/api.dart';
import 'package:base_app/src/data/model/base/transmissible_data.dart';
import 'package:base_app/src/data/model/user.dart';
import 'package:base_app/src/domain/repositories/repository_impl.dart';
import 'package:dio/dio.dart';

class UserRepository implements RepositoryImpl<String, UserData> {
  final _dao = Dao<User>(boxName: HiveService.userBoxName);
  final _api = CrudApi<User>(Environment.dio, baseUrl: Environment.apiUrl);
  @override
  Future<Result<User>> create(UserData data) async {
    return await _api.create(data).then((value) => Result.success(value as User)).catchError((e) async {
      if(e is DioError) {
        final res = e.response;
        Log.e("유저 Create 오류", "${res?.statusCode} => ${res?.statusMessage}", e.stackTrace);
      }
    });
  }

  @override
  Future delete(String id) async {
    await _api.delete(id).catchError((e) async {
      if(e is DioError) {
        final res = e.response;
        Log.e("유저 Delete 오류", "${res?.statusCode} => ${res?.statusMessage}", e.stackTrace);
      }
    });
  }

  @override
  Future<Result> get(String id, {bool isRemote = false}) async {
    return await _api.get(id).then((value) {
      _dao.add(value);
      return Result.success(value);
    }).catchError((e) {
      if(e is DioError) {
        final res = e.response;
        Log.e("유저 Get 오류", "${res?.statusCode} => ${res?.statusMessage}", e.stackTrace);
      }
    });
  }

  @override
  Future<Result> update(UserData data) async {
    return await _api.update(data)
        .then((value) => Result.success(value))
        .catchError((e) {
      if(e is DioError) {
        final res = e.response;
        Log.e("유저 update 오류", "${res?.statusCode} => ${res?.statusMessage}", e.stackTrace);
      }
    });
  }

  @override
  Future<Result> getAll(covariant data) {
    throw UnimplementedError("User Repository에 getAll 메서드가 없습니다.");
  }



}