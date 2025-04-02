// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_child_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProfileChildEntity _$ProfileChildEntityFromJson(Map<String, dynamic> json) {
  return _ProfileChildEntity.fromJson(json);
}

/// @nodoc
mixin _$ProfileChildEntity {
  int? get id => throw _privateConstructorUsedError;
  String? get fullName => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;

  /// Serializes this ProfileChildEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProfileChildEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProfileChildEntityCopyWith<ProfileChildEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileChildEntityCopyWith<$Res> {
  factory $ProfileChildEntityCopyWith(
          ProfileChildEntity value, $Res Function(ProfileChildEntity) then) =
      _$ProfileChildEntityCopyWithImpl<$Res, ProfileChildEntity>;
  @useResult
  $Res call({int? id, String? fullName, String? email, String? imageUrl});
}

/// @nodoc
class _$ProfileChildEntityCopyWithImpl<$Res, $Val extends ProfileChildEntity>
    implements $ProfileChildEntityCopyWith<$Res> {
  _$ProfileChildEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProfileChildEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? fullName = freezed,
    Object? email = freezed,
    Object? imageUrl = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProfileChildEntityImplCopyWith<$Res>
    implements $ProfileChildEntityCopyWith<$Res> {
  factory _$$ProfileChildEntityImplCopyWith(_$ProfileChildEntityImpl value,
          $Res Function(_$ProfileChildEntityImpl) then) =
      __$$ProfileChildEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? fullName, String? email, String? imageUrl});
}

/// @nodoc
class __$$ProfileChildEntityImplCopyWithImpl<$Res>
    extends _$ProfileChildEntityCopyWithImpl<$Res, _$ProfileChildEntityImpl>
    implements _$$ProfileChildEntityImplCopyWith<$Res> {
  __$$ProfileChildEntityImplCopyWithImpl(_$ProfileChildEntityImpl _value,
      $Res Function(_$ProfileChildEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProfileChildEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? fullName = freezed,
    Object? email = freezed,
    Object? imageUrl = freezed,
  }) {
    return _then(_$ProfileChildEntityImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProfileChildEntityImpl implements _ProfileChildEntity {
  const _$ProfileChildEntityImpl(
      {this.id, this.fullName, this.email, this.imageUrl});

  factory _$ProfileChildEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProfileChildEntityImplFromJson(json);

  @override
  final int? id;
  @override
  final String? fullName;
  @override
  final String? email;
  @override
  final String? imageUrl;

  @override
  String toString() {
    return 'ProfileChildEntity(id: $id, fullName: $fullName, email: $email, imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileChildEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, fullName, email, imageUrl);

  /// Create a copy of ProfileChildEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileChildEntityImplCopyWith<_$ProfileChildEntityImpl> get copyWith =>
      __$$ProfileChildEntityImplCopyWithImpl<_$ProfileChildEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProfileChildEntityImplToJson(
      this,
    );
  }
}

abstract class _ProfileChildEntity implements ProfileChildEntity {
  const factory _ProfileChildEntity(
      {final int? id,
      final String? fullName,
      final String? email,
      final String? imageUrl}) = _$ProfileChildEntityImpl;

  factory _ProfileChildEntity.fromJson(Map<String, dynamic> json) =
      _$ProfileChildEntityImpl.fromJson;

  @override
  int? get id;
  @override
  String? get fullName;
  @override
  String? get email;
  @override
  String? get imageUrl;

  /// Create a copy of ProfileChildEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProfileChildEntityImplCopyWith<_$ProfileChildEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
