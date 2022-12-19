// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ProductAdapter extends TypeAdapter<_$_Product> {
  @override
  final int typeId = 2;

  @override
  _$_Product read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_Product(
      id: fields[0] as int,
      name: fields[1] as String,
      price: fields[2] as int,
      owner: fields[3] as Owner,
      explain: fields[4] as String,
      image: fields[5] as String,
    );
  }

  @override
  void write(BinaryWriter writer, _$_Product obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.price)
      ..writeByte(3)
      ..write(obj.owner)
      ..writeByte(4)
      ..write(obj.explain)
      ..writeByte(5)
      ..write(obj.image);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ProductAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Product _$$_ProductFromJson(Map<String, dynamic> json) => _$_Product(
      id: json['id'] as int,
      name: json['name'] as String,
      price: json['price'] as int,
      owner: Owner.fromJson(json['owner'] as Map<String, dynamic>),
      explain: json['explain'] as String,
      image: json['image'] as String,
    );

Map<String, dynamic> _$$_ProductToJson(_$_Product instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'price': instance.price,
      'owner': instance.owner,
      'explain': instance.explain,
      'image': instance.image,
    };
