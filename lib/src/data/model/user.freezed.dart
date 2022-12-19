// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
mixin _$User {
  @HiveField(0)
  String get id => throw _privateConstructorUsedError;
  @HiveField(1)
  String get name => throw _privateConstructorUsedError;
  @HiveField(2)
  String get email => throw _privateConstructorUsedError;
  @HiveField(3)
  String get profile => throw _privateConstructorUsedError;
  @HiveField(4)
  HowToLogin get howToLogin => throw _privateConstructorUsedError;
  @HiveField(5)
  String get phoneNumber => throw _privateConstructorUsedError;
  @HiveField(6)
  DateTime get createAt => throw _privateConstructorUsedError;
  @HiveField(7)
  DateTime? get updateAt => throw _privateConstructorUsedError;
  @HiveField(8)
  DateTime? get deleteAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res, User>;
  @useResult
  $Res call(
      {@HiveField(0) String id,
      @HiveField(1) String name,
      @HiveField(2) String email,
      @HiveField(3) String profile,
      @HiveField(4) HowToLogin howToLogin,
      @HiveField(5) String phoneNumber,
      @HiveField(6) DateTime createAt,
      @HiveField(7) DateTime? updateAt,
      @HiveField(8) DateTime? deleteAt});
}

/// @nodoc
class _$UserCopyWithImpl<$Res, $Val extends User>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? email = null,
    Object? profile = null,
    Object? howToLogin = null,
    Object? phoneNumber = null,
    Object? createAt = null,
    Object? updateAt = freezed,
    Object? deleteAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      profile: null == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as String,
      howToLogin: null == howToLogin
          ? _value.howToLogin
          : howToLogin // ignore: cast_nullable_to_non_nullable
              as HowToLogin,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      createAt: null == createAt
          ? _value.createAt
          : createAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updateAt: freezed == updateAt
          ? _value.updateAt
          : updateAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      deleteAt: freezed == deleteAt
          ? _value.deleteAt
          : deleteAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$_UserCopyWith(_$_User value, $Res Function(_$_User) then) =
      __$$_UserCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) String id,
      @HiveField(1) String name,
      @HiveField(2) String email,
      @HiveField(3) String profile,
      @HiveField(4) HowToLogin howToLogin,
      @HiveField(5) String phoneNumber,
      @HiveField(6) DateTime createAt,
      @HiveField(7) DateTime? updateAt,
      @HiveField(8) DateTime? deleteAt});
}

/// @nodoc
class __$$_UserCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res, _$_User>
    implements _$$_UserCopyWith<$Res> {
  __$$_UserCopyWithImpl(_$_User _value, $Res Function(_$_User) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? email = null,
    Object? profile = null,
    Object? howToLogin = null,
    Object? phoneNumber = null,
    Object? createAt = null,
    Object? updateAt = freezed,
    Object? deleteAt = freezed,
  }) {
    return _then(_$_User(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      profile: null == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as String,
      howToLogin: null == howToLogin
          ? _value.howToLogin
          : howToLogin // ignore: cast_nullable_to_non_nullable
              as HowToLogin,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      createAt: null == createAt
          ? _value.createAt
          : createAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updateAt: freezed == updateAt
          ? _value.updateAt
          : updateAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      deleteAt: freezed == deleteAt
          ? _value.deleteAt
          : deleteAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: 0)
class _$_User with PersonMixin, SocialMixin, DateStampMixin implements _User {
  _$_User(
      {@HiveField(0) required this.id,
      @HiveField(1) required this.name,
      @HiveField(2) this.email = "",
      @HiveField(3) this.profile = "",
      @HiveField(4) required this.howToLogin,
      @HiveField(5) this.phoneNumber = "",
      @HiveField(6) required this.createAt,
      @HiveField(7) this.updateAt,
      @HiveField(8) this.deleteAt});

  factory _$_User.fromJson(Map<String, dynamic> json) => _$$_UserFromJson(json);

  @override
  @HiveField(0)
  final String id;
  @override
  @HiveField(1)
  final String name;
  @override
  @JsonKey()
  @HiveField(2)
  final String email;
  @override
  @JsonKey()
  @HiveField(3)
  final String profile;
  @override
  @HiveField(4)
  final HowToLogin howToLogin;
  @override
  @JsonKey()
  @HiveField(5)
  final String phoneNumber;
  @override
  @HiveField(6)
  final DateTime createAt;
  @override
  @HiveField(7)
  final DateTime? updateAt;
  @override
  @HiveField(8)
  final DateTime? deleteAt;

  @override
  String toString() {
    return 'User(id: $id, name: $name, email: $email, profile: $profile, howToLogin: $howToLogin, phoneNumber: $phoneNumber, createAt: $createAt, updateAt: $updateAt, deleteAt: $deleteAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_User &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.profile, profile) || other.profile == profile) &&
            (identical(other.howToLogin, howToLogin) ||
                other.howToLogin == howToLogin) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.createAt, createAt) ||
                other.createAt == createAt) &&
            (identical(other.updateAt, updateAt) ||
                other.updateAt == updateAt) &&
            (identical(other.deleteAt, deleteAt) ||
                other.deleteAt == deleteAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, email, profile,
      howToLogin, phoneNumber, createAt, updateAt, deleteAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserCopyWith<_$_User> get copyWith =>
      __$$_UserCopyWithImpl<_$_User>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserToJson(
      this,
    );
  }
}

abstract class _User implements User, PersonMixin, SocialMixin, DateStampMixin {
  factory _User(
      {@HiveField(0) required final String id,
      @HiveField(1) required final String name,
      @HiveField(2) final String email,
      @HiveField(3) final String profile,
      @HiveField(4) required final HowToLogin howToLogin,
      @HiveField(5) final String phoneNumber,
      @HiveField(6) required final DateTime createAt,
      @HiveField(7) final DateTime? updateAt,
      @HiveField(8) final DateTime? deleteAt}) = _$_User;

  factory _User.fromJson(Map<String, dynamic> json) = _$_User.fromJson;

  @override
  @HiveField(0)
  String get id;
  @override
  @HiveField(1)
  String get name;
  @override
  @HiveField(2)
  String get email;
  @override
  @HiveField(3)
  String get profile;
  @override
  @HiveField(4)
  HowToLogin get howToLogin;
  @override
  @HiveField(5)
  String get phoneNumber;
  @override
  @HiveField(6)
  DateTime get createAt;
  @override
  @HiveField(7)
  DateTime? get updateAt;
  @override
  @HiveField(8)
  DateTime? get deleteAt;
  @override
  @JsonKey(ignore: true)
  _$$_UserCopyWith<_$_User> get copyWith => throw _privateConstructorUsedError;
}
