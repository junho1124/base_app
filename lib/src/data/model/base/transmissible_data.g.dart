// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transmissible_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserData _$$UserDataFromJson(Map<String, dynamic> json) => _$UserData(
      User.fromJson(json['user'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$UserDataToJson(_$UserData instance) =>
    <String, dynamic>{
      'user': instance.user,
      'runtimeType': instance.$type,
    };

_$OwnerData _$$OwnerDataFromJson(Map<String, dynamic> json) => _$OwnerData(
      Owner.fromJson(json['owner'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$OwnerDataToJson(_$OwnerData instance) =>
    <String, dynamic>{
      'owner': instance.owner,
      'runtimeType': instance.$type,
    };

_$ProductData _$$ProductDataFromJson(Map<String, dynamic> json) =>
    _$ProductData(
      Product.fromJson(json['item'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ProductDataToJson(_$ProductData instance) =>
    <String, dynamic>{
      'item': instance.item,
      'runtimeType': instance.$type,
    };
