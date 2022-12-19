// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class UserAdapter extends TypeAdapter<_$_User> {
  @override
  final int typeId = 0;

  @override
  _$_User read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_User(
      id: fields[0] as String,
      name: fields[1] as String,
      email: fields[2] as String,
      profile: fields[3] as String,
      howToLogin: fields[4] as HowToLogin,
      phoneNumber: fields[5] as String,
      createAt: fields[6] as DateTime,
      updateAt: fields[7] as DateTime?,
      deleteAt: fields[8] as DateTime?,
    );
  }

  @override
  void write(BinaryWriter writer, _$_User obj) {
    writer
      ..writeByte(9)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.email)
      ..writeByte(3)
      ..write(obj.profile)
      ..writeByte(4)
      ..write(obj.howToLogin)
      ..writeByte(5)
      ..write(obj.phoneNumber)
      ..writeByte(6)
      ..write(obj.createAt)
      ..writeByte(7)
      ..write(obj.updateAt)
      ..writeByte(8)
      ..write(obj.deleteAt);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UserAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_User _$$_UserFromJson(Map<String, dynamic> json) => _$_User(
      id: json['id'] as String,
      name: json['name'] as String,
      email: json['email'] as String? ?? "",
      profile: json['profile'] as String? ?? "",
      howToLogin: $enumDecode(_$HowToLoginEnumMap, json['howToLogin']),
      phoneNumber: json['phoneNumber'] as String? ?? "",
      createAt: DateTime.parse(json['createAt'] as String),
      updateAt: json['updateAt'] == null
          ? null
          : DateTime.parse(json['updateAt'] as String),
      deleteAt: json['deleteAt'] == null
          ? null
          : DateTime.parse(json['deleteAt'] as String),
    );

Map<String, dynamic> _$$_UserToJson(_$_User instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'profile': instance.profile,
      'howToLogin': _$HowToLoginEnumMap[instance.howToLogin]!,
      'phoneNumber': instance.phoneNumber,
      'createAt': instance.createAt.toIso8601String(),
      'updateAt': instance.updateAt?.toIso8601String(),
      'deleteAt': instance.deleteAt?.toIso8601String(),
    };

const _$HowToLoginEnumMap = {
  HowToLogin.apple: 'apple',
  HowToLogin.google: 'google',
  HowToLogin.kakao: 'kakao',
};
