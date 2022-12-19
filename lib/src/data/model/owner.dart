import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

import 'base/mixin.dart';
import 'product.dart';

part 'owner.freezed.dart';
part 'owner.g.dart';

@freezed
class Owner with _$Owner {
  @With<PersonMixin>()
  @With<OwnerMixin>()
  @With<DateStampMixin>()
  @HiveType(typeId: 1)
  factory Owner({
    @HiveField(0)
    required int id,
    @HiveField(1)
    required String name,
    @HiveField(2)
    required String profile,
    @HiveField(3)
    required List<Product> items,
    @HiveField(4)
    required DateTime createAt,
    @HiveField(5)
    DateTime? updateAt,
    @HiveField(6)
    DateTime? deleteAt,
  }) = _Owner;

  factory Owner.fromJson(Map<String, dynamic> json) => _$OwnerFromJson(json);

}