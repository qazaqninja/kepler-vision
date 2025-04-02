// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_role_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProfileRoleEntity _$ProfileRoleEntityFromJson(Map<String, dynamic> json) {
  return _ProfileRoleEntity.fromJson(json);
}

/// @nodoc
mixin _$ProfileRoleEntity {
  String? get name => throw _privateConstructorUsedError;
  bool get allowNotification => throw _privateConstructorUsedError;
  bool get events => throw _privateConstructorUsedError;
  bool? get redirectedEvents => throw _privateConstructorUsedError;
  List<ProfileChildEntity>? get children => throw _privateConstructorUsedError;
  bool? get comeAndGo => throw _privateConstructorUsedError;
  List<ProfileClassEntity>? get classes => throw _privateConstructorUsedError;

  /// Serializes this ProfileRoleEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProfileRoleEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProfileRoleEntityCopyWith<ProfileRoleEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileRoleEntityCopyWith<$Res> {
  factory $ProfileRoleEntityCopyWith(
          ProfileRoleEntity value, $Res Function(ProfileRoleEntity) then) =
      _$ProfileRoleEntityCopyWithImpl<$Res, ProfileRoleEntity>;
  @useResult
  $Res call(
      {String? name,
      bool allowNotification,
      bool events,
      bool? redirectedEvents,
      List<ProfileChildEntity>? children,
      bool? comeAndGo,
      List<ProfileClassEntity>? classes});
}

/// @nodoc
class _$ProfileRoleEntityCopyWithImpl<$Res, $Val extends ProfileRoleEntity>
    implements $ProfileRoleEntityCopyWith<$Res> {
  _$ProfileRoleEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProfileRoleEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? allowNotification = null,
    Object? events = null,
    Object? redirectedEvents = freezed,
    Object? children = freezed,
    Object? comeAndGo = freezed,
    Object? classes = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      allowNotification: null == allowNotification
          ? _value.allowNotification
          : allowNotification // ignore: cast_nullable_to_non_nullable
              as bool,
      events: null == events
          ? _value.events
          : events // ignore: cast_nullable_to_non_nullable
              as bool,
      redirectedEvents: freezed == redirectedEvents
          ? _value.redirectedEvents
          : redirectedEvents // ignore: cast_nullable_to_non_nullable
              as bool?,
      children: freezed == children
          ? _value.children
          : children // ignore: cast_nullable_to_non_nullable
              as List<ProfileChildEntity>?,
      comeAndGo: freezed == comeAndGo
          ? _value.comeAndGo
          : comeAndGo // ignore: cast_nullable_to_non_nullable
              as bool?,
      classes: freezed == classes
          ? _value.classes
          : classes // ignore: cast_nullable_to_non_nullable
              as List<ProfileClassEntity>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProfileRoleEntityImplCopyWith<$Res>
    implements $ProfileRoleEntityCopyWith<$Res> {
  factory _$$ProfileRoleEntityImplCopyWith(_$ProfileRoleEntityImpl value,
          $Res Function(_$ProfileRoleEntityImpl) then) =
      __$$ProfileRoleEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? name,
      bool allowNotification,
      bool events,
      bool? redirectedEvents,
      List<ProfileChildEntity>? children,
      bool? comeAndGo,
      List<ProfileClassEntity>? classes});
}

/// @nodoc
class __$$ProfileRoleEntityImplCopyWithImpl<$Res>
    extends _$ProfileRoleEntityCopyWithImpl<$Res, _$ProfileRoleEntityImpl>
    implements _$$ProfileRoleEntityImplCopyWith<$Res> {
  __$$ProfileRoleEntityImplCopyWithImpl(_$ProfileRoleEntityImpl _value,
      $Res Function(_$ProfileRoleEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProfileRoleEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? allowNotification = null,
    Object? events = null,
    Object? redirectedEvents = freezed,
    Object? children = freezed,
    Object? comeAndGo = freezed,
    Object? classes = freezed,
  }) {
    return _then(_$ProfileRoleEntityImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      allowNotification: null == allowNotification
          ? _value.allowNotification
          : allowNotification // ignore: cast_nullable_to_non_nullable
              as bool,
      events: null == events
          ? _value.events
          : events // ignore: cast_nullable_to_non_nullable
              as bool,
      redirectedEvents: freezed == redirectedEvents
          ? _value.redirectedEvents
          : redirectedEvents // ignore: cast_nullable_to_non_nullable
              as bool?,
      children: freezed == children
          ? _value._children
          : children // ignore: cast_nullable_to_non_nullable
              as List<ProfileChildEntity>?,
      comeAndGo: freezed == comeAndGo
          ? _value.comeAndGo
          : comeAndGo // ignore: cast_nullable_to_non_nullable
              as bool?,
      classes: freezed == classes
          ? _value._classes
          : classes // ignore: cast_nullable_to_non_nullable
              as List<ProfileClassEntity>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$ProfileRoleEntityImpl implements _ProfileRoleEntity {
  const _$ProfileRoleEntityImpl(
      {this.name = "parent",
      required this.allowNotification,
      required this.events,
      this.redirectedEvents,
      final List<ProfileChildEntity>? children,
      this.comeAndGo,
      final List<ProfileClassEntity>? classes})
      : _children = children,
        _classes = classes;

  factory _$ProfileRoleEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProfileRoleEntityImplFromJson(json);

  @override
  @JsonKey()
  final String? name;
  @override
  final bool allowNotification;
  @override
  final bool events;
  @override
  final bool? redirectedEvents;
  final List<ProfileChildEntity>? _children;
  @override
  List<ProfileChildEntity>? get children {
    final value = _children;
    if (value == null) return null;
    if (_children is EqualUnmodifiableListView) return _children;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final bool? comeAndGo;
  final List<ProfileClassEntity>? _classes;
  @override
  List<ProfileClassEntity>? get classes {
    final value = _classes;
    if (value == null) return null;
    if (_classes is EqualUnmodifiableListView) return _classes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ProfileRoleEntity(name: $name, allowNotification: $allowNotification, events: $events, redirectedEvents: $redirectedEvents, children: $children, comeAndGo: $comeAndGo, classes: $classes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileRoleEntityImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.allowNotification, allowNotification) ||
                other.allowNotification == allowNotification) &&
            (identical(other.events, events) || other.events == events) &&
            (identical(other.redirectedEvents, redirectedEvents) ||
                other.redirectedEvents == redirectedEvents) &&
            const DeepCollectionEquality().equals(other._children, _children) &&
            (identical(other.comeAndGo, comeAndGo) ||
                other.comeAndGo == comeAndGo) &&
            const DeepCollectionEquality().equals(other._classes, _classes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      allowNotification,
      events,
      redirectedEvents,
      const DeepCollectionEquality().hash(_children),
      comeAndGo,
      const DeepCollectionEquality().hash(_classes));

  /// Create a copy of ProfileRoleEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileRoleEntityImplCopyWith<_$ProfileRoleEntityImpl> get copyWith =>
      __$$ProfileRoleEntityImplCopyWithImpl<_$ProfileRoleEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProfileRoleEntityImplToJson(
      this,
    );
  }
}

abstract class _ProfileRoleEntity implements ProfileRoleEntity {
  const factory _ProfileRoleEntity(
      {final String? name,
      required final bool allowNotification,
      required final bool events,
      final bool? redirectedEvents,
      final List<ProfileChildEntity>? children,
      final bool? comeAndGo,
      final List<ProfileClassEntity>? classes}) = _$ProfileRoleEntityImpl;

  factory _ProfileRoleEntity.fromJson(Map<String, dynamic> json) =
      _$ProfileRoleEntityImpl.fromJson;

  @override
  String? get name;
  @override
  bool get allowNotification;
  @override
  bool get events;
  @override
  bool? get redirectedEvents;
  @override
  List<ProfileChildEntity>? get children;
  @override
  bool? get comeAndGo;
  @override
  List<ProfileClassEntity>? get classes;

  /// Create a copy of ProfileRoleEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProfileRoleEntityImplCopyWith<_$ProfileRoleEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
