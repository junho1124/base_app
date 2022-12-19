// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'owner.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class OwnerAdapter extends TypeAdapter<_$_Owner> {
  @override
  final int typeId = 1;

  @override
  _$_Owner read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_Owner(
      id: fields[0] as int,
      name: fields[1] as String,
      profile: fields[2] as String,
      items: (fields[3] as List).cast<Product>(),
      createAt: fields[4] as DateTime,
      updateAt: fields[5] as DateTime?,
      deleteAt: fields[6] as DateTime?,
    );
  }

  @override
  void write(BinaryWriter writer, _$_Owner obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.profile)
      ..writeByte(4)
      ..write(obj.createAt)
      ..writeByte(5)
      ..write(obj.updateAt)
      ..writeByte(6)
      ..write(obj.deleteAt)
      ..writeByte(3)
      ..write(obj.items);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is OwnerAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Owner _$$_OwnerFromJson(Map<String, dynamic> json) => _$_Owner(
      id: json['id'] as int,
      name: json['name'] as String,
      profile: json['profile'] as String,
      items: (json['items'] as List<dynamic>)
          .map((e) => Product.fromJson(e as Map<String, dynamic>))
          .toList(),
      createAt: DateTime.parse(json['createAt'] as String),
      updateAt: json['updateAt'] == null
          ? null
          : DateTime.parse(json['updateAt'] as String),
      deleteAt: json['deleteAt'] == null
          ? null
          : DateTime.parse(json['deleteAt'] as String),
    );

Map<String, dynamic> _$$_OwnerToJson(_$_Owner instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'profile': instance.profile,
      'items': instance.items,
      'createAt': instance.createAt.toIso8601String(),
      'updateAt': instance.updateAt?.toIso8601String(),
      'deleteAt': instance.deleteAt?.toIso8601String(),
    };
