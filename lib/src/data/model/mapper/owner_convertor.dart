import 'package:base_app/src/data/model/owner.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

class OwnerConvertor implements JsonConverter<Owner, Map<String, dynamic>> {
  const OwnerConvertor();
  @override
  Owner fromJson(Map<String, dynamic> json) {
    return Owner.fromJson(json);
  }

  @override
  Map<String, dynamic> toJson(Owner object) {
    return {};
  }

}