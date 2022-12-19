import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

import 'base/mixin.dart';
import 'owner.dart';

part 'product.freezed.dart';
part 'product.g.dart';

@freezed
class Product with _$Product {
  @With<ItemMixin>()
  @With<ProductMixin>()
  @HiveType(typeId: 2)
  factory Product({
    @HiveField(0)
    required int id,
    @HiveField(1)
    required String name,
    @HiveField(2)
    required int price,
    @HiveField(3)
    required Owner owner,
    @HiveField(4)
    required String explain,
    @HiveField(5)
    required String image,
  }) = _Product;

  factory Product.fromJson(Map<String, dynamic> json) => _$ProductFromJson(json);

}