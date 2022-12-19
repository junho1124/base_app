import 'package:base_app/src/data/model/base/transmissible_data.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';


part 'api.g.dart';

@RestApi()
abstract class CrudApi<T> {
  factory CrudApi(Dio dio, {String baseUrl}) = _CrudApi<T>;

  @GET("/")
  Future<T> get(covariant id);

  @POST("/")
  Future<T> create(TransmissibleData data);

  @PATCH("/")
  Future<T> update(TransmissibleData data);

  @DELETE("/")
  Future<T> delete(covariant id);

  @GET("/getAll")
  Future<List<T>> getAll();
}

extension FromJson on Type {
  fromJson(Map<String, dynamic> json) => Type;
}