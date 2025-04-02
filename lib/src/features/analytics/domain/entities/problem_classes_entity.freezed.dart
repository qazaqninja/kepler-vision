// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'problem_classes_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProblemClassesEntity _$ProblemClassesEntityFromJson(Map<String, dynamic> json) {
  return _ProblemClassesEntity.fromJson(json);
}

/// @nodoc
mixin _$ProblemClassesEntity {
  List<String> get problemClasses => throw _privateConstructorUsedError;

  /// Serializes this ProblemClassesEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProblemClassesEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProblemClassesEntityCopyWith<ProblemClassesEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProblemClassesEntityCopyWith<$Res> {
  factory $ProblemClassesEntityCopyWith(ProblemClassesEntity value,
          $Res Function(ProblemClassesEntity) then) =
      _$ProblemClassesEntityCopyWithImpl<$Res, ProblemClassesEntity>;
  @useResult
  $Res call({List<String> problemClasses});
}

/// @nodoc
class _$ProblemClassesEntityCopyWithImpl<$Res,
        $Val extends ProblemClassesEntity>
    implements $ProblemClassesEntityCopyWith<$Res> {
  _$ProblemClassesEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProblemClassesEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? problemClasses = null,
  }) {
    return _then(_value.copyWith(
      problemClasses: null == problemClasses
          ? _value.problemClasses
          : problemClasses // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProblemClassesEntityImplCopyWith<$Res>
    implements $ProblemClassesEntityCopyWith<$Res> {
  factory _$$ProblemClassesEntityImplCopyWith(_$ProblemClassesEntityImpl value,
          $Res Function(_$ProblemClassesEntityImpl) then) =
      __$$ProblemClassesEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<String> problemClasses});
}

/// @nodoc
class __$$ProblemClassesEntityImplCopyWithImpl<$Res>
    extends _$ProblemClassesEntityCopyWithImpl<$Res, _$ProblemClassesEntityImpl>
    implements _$$ProblemClassesEntityImplCopyWith<$Res> {
  __$$ProblemClassesEntityImplCopyWithImpl(_$ProblemClassesEntityImpl _value,
      $Res Function(_$ProblemClassesEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProblemClassesEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? problemClasses = null,
  }) {
    return _then(_$ProblemClassesEntityImpl(
      problemClasses: null == problemClasses
          ? _value._problemClasses
          : problemClasses // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProblemClassesEntityImpl implements _ProblemClassesEntity {
  _$ProblemClassesEntityImpl({required final List<String> problemClasses})
      : _problemClasses = problemClasses;

  factory _$ProblemClassesEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProblemClassesEntityImplFromJson(json);

  final List<String> _problemClasses;
  @override
  List<String> get problemClasses {
    if (_problemClasses is EqualUnmodifiableListView) return _problemClasses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_problemClasses);
  }

  @override
  String toString() {
    return 'ProblemClassesEntity(problemClasses: $problemClasses)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProblemClassesEntityImpl &&
            const DeepCollectionEquality()
                .equals(other._problemClasses, _problemClasses));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_problemClasses));

  /// Create a copy of ProblemClassesEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProblemClassesEntityImplCopyWith<_$ProblemClassesEntityImpl>
      get copyWith =>
          __$$ProblemClassesEntityImplCopyWithImpl<_$ProblemClassesEntityImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProblemClassesEntityImplToJson(
      this,
    );
  }
}

abstract class _ProblemClassesEntity implements ProblemClassesEntity {
  factory _ProblemClassesEntity({required final List<String> problemClasses}) =
      _$ProblemClassesEntityImpl;

  factory _ProblemClassesEntity.fromJson(Map<String, dynamic> json) =
      _$ProblemClassesEntityImpl.fromJson;

  @override
  List<String> get problemClasses;

  /// Create a copy of ProblemClassesEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProblemClassesEntityImplCopyWith<_$ProblemClassesEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
