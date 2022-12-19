// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'transmissible_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TransmissibleData _$TransmissibleDataFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'user':
      return UserData.fromJson(json);
    case 'owner':
      return OwnerData.fromJson(json);
    case 'product':
      return ProductData.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'TransmissibleData',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$TransmissibleData {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User user) user,
    required TResult Function(Owner owner) owner,
    required TResult Function(Product item) product,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(User user)? user,
    TResult? Function(Owner owner)? owner,
    TResult? Function(Product item)? product,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user)? user,
    TResult Function(Owner owner)? owner,
    TResult Function(Product item)? product,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserData value) user,
    required TResult Function(OwnerData value) owner,
    required TResult Function(ProductData value) product,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserData value)? user,
    TResult? Function(OwnerData value)? owner,
    TResult? Function(ProductData value)? product,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserData value)? user,
    TResult Function(OwnerData value)? owner,
    TResult Function(ProductData value)? product,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransmissibleDataCopyWith<$Res> {
  factory $TransmissibleDataCopyWith(
          TransmissibleData value, $Res Function(TransmissibleData) then) =
      _$TransmissibleDataCopyWithImpl<$Res, TransmissibleData>;
}

/// @nodoc
class _$TransmissibleDataCopyWithImpl<$Res, $Val extends TransmissibleData>
    implements $TransmissibleDataCopyWith<$Res> {
  _$TransmissibleDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$UserDataCopyWith<$Res> {
  factory _$$UserDataCopyWith(
          _$UserData value, $Res Function(_$UserData) then) =
      __$$UserDataCopyWithImpl<$Res>;
  @useResult
  $Res call({User user});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$$UserDataCopyWithImpl<$Res>
    extends _$TransmissibleDataCopyWithImpl<$Res, _$UserData>
    implements _$$UserDataCopyWith<$Res> {
  __$$UserDataCopyWithImpl(_$UserData _value, $Res Function(_$UserData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$UserData(
      null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$UserData extends UserData {
  _$UserData(this.user, {final String? $type})
      : $type = $type ?? 'user',
        super._();

  factory _$UserData.fromJson(Map<String, dynamic> json) =>
      _$$UserDataFromJson(json);

  @override
  final User user;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'TransmissibleData.user(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserData &&
            (identical(other.user, user) || other.user == user));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserDataCopyWith<_$UserData> get copyWith =>
      __$$UserDataCopyWithImpl<_$UserData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User user) user,
    required TResult Function(Owner owner) owner,
    required TResult Function(Product item) product,
  }) {
    return user(this.user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(User user)? user,
    TResult? Function(Owner owner)? owner,
    TResult? Function(Product item)? product,
  }) {
    return user?.call(this.user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user)? user,
    TResult Function(Owner owner)? owner,
    TResult Function(Product item)? product,
    required TResult orElse(),
  }) {
    if (user != null) {
      return user(this.user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserData value) user,
    required TResult Function(OwnerData value) owner,
    required TResult Function(ProductData value) product,
  }) {
    return user(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserData value)? user,
    TResult? Function(OwnerData value)? owner,
    TResult? Function(ProductData value)? product,
  }) {
    return user?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserData value)? user,
    TResult Function(OwnerData value)? owner,
    TResult Function(ProductData value)? product,
    required TResult orElse(),
  }) {
    if (user != null) {
      return user(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$UserDataToJson(
      this,
    );
  }
}

abstract class UserData extends TransmissibleData {
  factory UserData(final User user) = _$UserData;
  UserData._() : super._();

  factory UserData.fromJson(Map<String, dynamic> json) = _$UserData.fromJson;

  User get user;
  @JsonKey(ignore: true)
  _$$UserDataCopyWith<_$UserData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OwnerDataCopyWith<$Res> {
  factory _$$OwnerDataCopyWith(
          _$OwnerData value, $Res Function(_$OwnerData) then) =
      __$$OwnerDataCopyWithImpl<$Res>;
  @useResult
  $Res call({Owner owner});

  $OwnerCopyWith<$Res> get owner;
}

/// @nodoc
class __$$OwnerDataCopyWithImpl<$Res>
    extends _$TransmissibleDataCopyWithImpl<$Res, _$OwnerData>
    implements _$$OwnerDataCopyWith<$Res> {
  __$$OwnerDataCopyWithImpl(
      _$OwnerData _value, $Res Function(_$OwnerData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? owner = null,
  }) {
    return _then(_$OwnerData(
      null == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as Owner,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $OwnerCopyWith<$Res> get owner {
    return $OwnerCopyWith<$Res>(_value.owner, (value) {
      return _then(_value.copyWith(owner: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$OwnerData extends OwnerData {
  _$OwnerData(this.owner, {final String? $type})
      : $type = $type ?? 'owner',
        super._();

  factory _$OwnerData.fromJson(Map<String, dynamic> json) =>
      _$$OwnerDataFromJson(json);

  @override
  final Owner owner;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'TransmissibleData.owner(owner: $owner)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OwnerData &&
            (identical(other.owner, owner) || other.owner == owner));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, owner);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OwnerDataCopyWith<_$OwnerData> get copyWith =>
      __$$OwnerDataCopyWithImpl<_$OwnerData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User user) user,
    required TResult Function(Owner owner) owner,
    required TResult Function(Product item) product,
  }) {
    return owner(this.owner);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(User user)? user,
    TResult? Function(Owner owner)? owner,
    TResult? Function(Product item)? product,
  }) {
    return owner?.call(this.owner);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user)? user,
    TResult Function(Owner owner)? owner,
    TResult Function(Product item)? product,
    required TResult orElse(),
  }) {
    if (owner != null) {
      return owner(this.owner);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserData value) user,
    required TResult Function(OwnerData value) owner,
    required TResult Function(ProductData value) product,
  }) {
    return owner(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserData value)? user,
    TResult? Function(OwnerData value)? owner,
    TResult? Function(ProductData value)? product,
  }) {
    return owner?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserData value)? user,
    TResult Function(OwnerData value)? owner,
    TResult Function(ProductData value)? product,
    required TResult orElse(),
  }) {
    if (owner != null) {
      return owner(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$OwnerDataToJson(
      this,
    );
  }
}

abstract class OwnerData extends TransmissibleData {
  factory OwnerData(final Owner owner) = _$OwnerData;
  OwnerData._() : super._();

  factory OwnerData.fromJson(Map<String, dynamic> json) = _$OwnerData.fromJson;

  Owner get owner;
  @JsonKey(ignore: true)
  _$$OwnerDataCopyWith<_$OwnerData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProductDataCopyWith<$Res> {
  factory _$$ProductDataCopyWith(
          _$ProductData value, $Res Function(_$ProductData) then) =
      __$$ProductDataCopyWithImpl<$Res>;
  @useResult
  $Res call({Product item});

  $ProductCopyWith<$Res> get item;
}

/// @nodoc
class __$$ProductDataCopyWithImpl<$Res>
    extends _$TransmissibleDataCopyWithImpl<$Res, _$ProductData>
    implements _$$ProductDataCopyWith<$Res> {
  __$$ProductDataCopyWithImpl(
      _$ProductData _value, $Res Function(_$ProductData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? item = null,
  }) {
    return _then(_$ProductData(
      null == item
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as Product,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ProductCopyWith<$Res> get item {
    return $ProductCopyWith<$Res>(_value.item, (value) {
      return _then(_value.copyWith(item: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductData extends ProductData {
  _$ProductData(this.item, {final String? $type})
      : $type = $type ?? 'product',
        super._();

  factory _$ProductData.fromJson(Map<String, dynamic> json) =>
      _$$ProductDataFromJson(json);

  @override
  final Product item;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'TransmissibleData.product(item: $item)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductData &&
            (identical(other.item, item) || other.item == item));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, item);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductDataCopyWith<_$ProductData> get copyWith =>
      __$$ProductDataCopyWithImpl<_$ProductData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User user) user,
    required TResult Function(Owner owner) owner,
    required TResult Function(Product item) product,
  }) {
    return product(item);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(User user)? user,
    TResult? Function(Owner owner)? owner,
    TResult? Function(Product item)? product,
  }) {
    return product?.call(item);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user)? user,
    TResult Function(Owner owner)? owner,
    TResult Function(Product item)? product,
    required TResult orElse(),
  }) {
    if (product != null) {
      return product(item);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserData value) user,
    required TResult Function(OwnerData value) owner,
    required TResult Function(ProductData value) product,
  }) {
    return product(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserData value)? user,
    TResult? Function(OwnerData value)? owner,
    TResult? Function(ProductData value)? product,
  }) {
    return product?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserData value)? user,
    TResult Function(OwnerData value)? owner,
    TResult Function(ProductData value)? product,
    required TResult orElse(),
  }) {
    if (product != null) {
      return product(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductDataToJson(
      this,
    );
  }
}

abstract class ProductData extends TransmissibleData {
  factory ProductData(final Product item) = _$ProductData;
  ProductData._() : super._();

  factory ProductData.fromJson(Map<String, dynamic> json) =
      _$ProductData.fromJson;

  Product get item;
  @JsonKey(ignore: true)
  _$$ProductDataCopyWith<_$ProductData> get copyWith =>
      throw _privateConstructorUsedError;
}
