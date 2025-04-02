// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'suspect_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SuspectEntity _$SuspectEntityFromJson(Map<String, dynamic> json) {
  return _SuspectEntity.fromJson(json);
}

/// @nodoc
mixin _$SuspectEntity {
  int get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get surname => throw _privateConstructorUsedError;
  String? get className => throw _privateConstructorUsedError;
  String? get photoUrl => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  List<SummaryHighlightEntity> get highlights =>
      throw _privateConstructorUsedError;

  /// Serializes this SuspectEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SuspectEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SuspectEntityCopyWith<SuspectEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SuspectEntityCopyWith<$Res> {
  factory $SuspectEntityCopyWith(
          SuspectEntity value, $Res Function(SuspectEntity) then) =
      _$SuspectEntityCopyWithImpl<$Res, SuspectEntity>;
  @useResult
  $Res call(
      {int id,
      String? name,
      String? surname,
      String? className,
      String? photoUrl,
      String? description,
      List<SummaryHighlightEntity> highlights});
}

/// @nodoc
class _$SuspectEntityCopyWithImpl<$Res, $Val extends SuspectEntity>
    implements $SuspectEntityCopyWith<$Res> {
  _$SuspectEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SuspectEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = freezed,
    Object? surname = freezed,
    Object? className = freezed,
    Object? photoUrl = freezed,
    Object? description = freezed,
    Object? highlights = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      surname: freezed == surname
          ? _value.surname
          : surname // ignore: cast_nullable_to_non_nullable
              as String?,
      className: freezed == className
          ? _value.className
          : className // ignore: cast_nullable_to_non_nullable
              as String?,
      photoUrl: freezed == photoUrl
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      highlights: null == highlights
          ? _value.highlights
          : highlights // ignore: cast_nullable_to_non_nullable
              as List<SummaryHighlightEntity>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SuspectEntityImplCopyWith<$Res>
    implements $SuspectEntityCopyWith<$Res> {
  factory _$$SuspectEntityImplCopyWith(
          _$SuspectEntityImpl value, $Res Function(_$SuspectEntityImpl) then) =
      __$$SuspectEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String? name,
      String? surname,
      String? className,
      String? photoUrl,
      String? description,
      List<SummaryHighlightEntity> highlights});
}

/// @nodoc
class __$$SuspectEntityImplCopyWithImpl<$Res>
    extends _$SuspectEntityCopyWithImpl<$Res, _$SuspectEntityImpl>
    implements _$$SuspectEntityImplCopyWith<$Res> {
  __$$SuspectEntityImplCopyWithImpl(
      _$SuspectEntityImpl _value, $Res Function(_$SuspectEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of SuspectEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = freezed,
    Object? surname = freezed,
    Object? className = freezed,
    Object? photoUrl = freezed,
    Object? description = freezed,
    Object? highlights = null,
  }) {
    return _then(_$SuspectEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      surname: freezed == surname
          ? _value.surname
          : surname // ignore: cast_nullable_to_non_nullable
              as String?,
      className: freezed == className
          ? _value.className
          : className // ignore: cast_nullable_to_non_nullable
              as String?,
      photoUrl: freezed == photoUrl
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      highlights: null == highlights
          ? _value._highlights
          : highlights // ignore: cast_nullable_to_non_nullable
              as List<SummaryHighlightEntity>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SuspectEntityImpl implements _SuspectEntity {
  _$SuspectEntityImpl(
      {required this.id,
      this.name,
      this.surname,
      this.className,
      this.photoUrl,
      this.description,
      final List<SummaryHighlightEntity> highlights = const []})
      : _highlights = highlights;

  factory _$SuspectEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$SuspectEntityImplFromJson(json);

  @override
  final int id;
  @override
  final String? name;
  @override
  final String? surname;
  @override
  final String? className;
  @override
  final String? photoUrl;
  @override
  final String? description;
  final List<SummaryHighlightEntity> _highlights;
  @override
  @JsonKey()
  List<SummaryHighlightEntity> get highlights {
    if (_highlights is EqualUnmodifiableListView) return _highlights;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_highlights);
  }

  @override
  String toString() {
    return 'SuspectEntity(id: $id, name: $name, surname: $surname, className: $className, photoUrl: $photoUrl, description: $description, highlights: $highlights)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuspectEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.surname, surname) || other.surname == surname) &&
            (identical(other.className, className) ||
                other.className == className) &&
            (identical(other.photoUrl, photoUrl) ||
                other.photoUrl == photoUrl) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality()
                .equals(other._highlights, _highlights));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, surname, className,
      photoUrl, description, const DeepCollectionEquality().hash(_highlights));

  /// Create a copy of SuspectEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SuspectEntityImplCopyWith<_$SuspectEntityImpl> get copyWith =>
      __$$SuspectEntityImplCopyWithImpl<_$SuspectEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SuspectEntityImplToJson(
      this,
    );
  }
}

abstract class _SuspectEntity implements SuspectEntity {
  factory _SuspectEntity(
      {required final int id,
      final String? name,
      final String? surname,
      final String? className,
      final String? photoUrl,
      final String? description,
      final List<SummaryHighlightEntity> highlights}) = _$SuspectEntityImpl;

  factory _SuspectEntity.fromJson(Map<String, dynamic> json) =
      _$SuspectEntityImpl.fromJson;

  @override
  int get id;
  @override
  String? get name;
  @override
  String? get surname;
  @override
  String? get className;
  @override
  String? get photoUrl;
  @override
  String? get description;
  @override
  List<SummaryHighlightEntity> get highlights;

  /// Create a copy of SuspectEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SuspectEntityImplCopyWith<_$SuspectEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
