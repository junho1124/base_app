import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

import 'base/mixin.dart';
import 'enums/how_to_login.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  @With<PersonMixin>()
  @With<SocialMixin>()
  @With<DateStampMixin>()
  @HiveType(typeId: 0)
  factory User({
    @HiveField(0)
    required String id,
    @HiveField(1)
    required String name,
    @HiveField(2)
    @Default("") String email,
    @HiveField(3)
    @Default("") String profile,
    @HiveField(4)
    required HowToLogin howToLogin,
    @HiveField(5)
    @Default("") String phoneNumber,
    @HiveField(6)
    required DateTime createAt,
    @HiveField(7)
    DateTime? updateAt,
    @HiveField(8)
    DateTime? deleteAt,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);


}