// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'event_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

EventEntity _$EventEntityFromJson(Map<String, dynamic> json) {
  return _EventEntity.fromJson(json);
}

/// @nodoc
mixin _$EventEntity {
  int get id => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get expiresAt => throw _privateConstructorUsedError;
  DateTime? get occuredAt => throw _privateConstructorUsedError;
  String? get location => throw _privateConstructorUsedError;
  int? get floor => throw _privateConstructorUsedError;
  String? get camera => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  EventType get type => throw _privateConstructorUsedError;
  String? get videoUrl => throw _privateConstructorUsedError;
  String? get videoThumbnailPath => throw _privateConstructorUsedError;
  DateTime? get deadline => throw _privateConstructorUsedError;
  DateTime? get processedAt => throw _privateConstructorUsedError;
  int? get responsiblePerson => throw _privateConstructorUsedError;
  DateTime? get completedAt => throw _privateConstructorUsedError;
  UserEntity? get assignedTo => throw _privateConstructorUsedError;
  List<SuspectEntity> get involvedPersons => throw _privateConstructorUsedError;

  /// Serializes this EventEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of EventEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EventEntityCopyWith<EventEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventEntityCopyWith<$Res> {
  factory $EventEntityCopyWith(
          EventEntity value, $Res Function(EventEntity) then) =
      _$EventEntityCopyWithImpl<$Res, EventEntity>;
  @useResult
  $Res call(
      {int id,
      DateTime? createdAt,
      DateTime? expiresAt,
      DateTime? occuredAt,
      String? location,
      int? floor,
      String? camera,
      String? status,
      String? description,
      EventType type,
      String? videoUrl,
      String? videoThumbnailPath,
      DateTime? deadline,
      DateTime? processedAt,
      int? responsiblePerson,
      DateTime? completedAt,
      UserEntity? assignedTo,
      List<SuspectEntity> involvedPersons});

  $UserEntityCopyWith<$Res>? get assignedTo;
}

/// @nodoc
class _$EventEntityCopyWithImpl<$Res, $Val extends EventEntity>
    implements $EventEntityCopyWith<$Res> {
  _$EventEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EventEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createdAt = freezed,
    Object? expiresAt = freezed,
    Object? occuredAt = freezed,
    Object? location = freezed,
    Object? floor = freezed,
    Object? camera = freezed,
    Object? status = freezed,
    Object? description = freezed,
    Object? type = null,
    Object? videoUrl = freezed,
    Object? videoThumbnailPath = freezed,
    Object? deadline = freezed,
    Object? processedAt = freezed,
    Object? responsiblePerson = freezed,
    Object? completedAt = freezed,
    Object? assignedTo = freezed,
    Object? involvedPersons = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      expiresAt: freezed == expiresAt
          ? _value.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      occuredAt: freezed == occuredAt
          ? _value.occuredAt
          : occuredAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      floor: freezed == floor
          ? _value.floor
          : floor // ignore: cast_nullable_to_non_nullable
              as int?,
      camera: freezed == camera
          ? _value.camera
          : camera // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as EventType,
      videoUrl: freezed == videoUrl
          ? _value.videoUrl
          : videoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      videoThumbnailPath: freezed == videoThumbnailPath
          ? _value.videoThumbnailPath
          : videoThumbnailPath // ignore: cast_nullable_to_non_nullable
              as String?,
      deadline: freezed == deadline
          ? _value.deadline
          : deadline // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      processedAt: freezed == processedAt
          ? _value.processedAt
          : processedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      responsiblePerson: freezed == responsiblePerson
          ? _value.responsiblePerson
          : responsiblePerson // ignore: cast_nullable_to_non_nullable
              as int?,
      completedAt: freezed == completedAt
          ? _value.completedAt
          : completedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      assignedTo: freezed == assignedTo
          ? _value.assignedTo
          : assignedTo // ignore: cast_nullable_to_non_nullable
              as UserEntity?,
      involvedPersons: null == involvedPersons
          ? _value.involvedPersons
          : involvedPersons // ignore: cast_nullable_to_non_nullable
              as List<SuspectEntity>,
    ) as $Val);
  }

  /// Create a copy of EventEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserEntityCopyWith<$Res>? get assignedTo {
    if (_value.assignedTo == null) {
      return null;
    }

    return $UserEntityCopyWith<$Res>(_value.assignedTo!, (value) {
      return _then(_value.copyWith(assignedTo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$EventEntityImplCopyWith<$Res>
    implements $EventEntityCopyWith<$Res> {
  factory _$$EventEntityImplCopyWith(
          _$EventEntityImpl value, $Res Function(_$EventEntityImpl) then) =
      __$$EventEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      DateTime? createdAt,
      DateTime? expiresAt,
      DateTime? occuredAt,
      String? location,
      int? floor,
      String? camera,
      String? status,
      String? description,
      EventType type,
      String? videoUrl,
      String? videoThumbnailPath,
      DateTime? deadline,
      DateTime? processedAt,
      int? responsiblePerson,
      DateTime? completedAt,
      UserEntity? assignedTo,
      List<SuspectEntity> involvedPersons});

  @override
  $UserEntityCopyWith<$Res>? get assignedTo;
}

/// @nodoc
class __$$EventEntityImplCopyWithImpl<$Res>
    extends _$EventEntityCopyWithImpl<$Res, _$EventEntityImpl>
    implements _$$EventEntityImplCopyWith<$Res> {
  __$$EventEntityImplCopyWithImpl(
      _$EventEntityImpl _value, $Res Function(_$EventEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of EventEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createdAt = freezed,
    Object? expiresAt = freezed,
    Object? occuredAt = freezed,
    Object? location = freezed,
    Object? floor = freezed,
    Object? camera = freezed,
    Object? status = freezed,
    Object? description = freezed,
    Object? type = null,
    Object? videoUrl = freezed,
    Object? videoThumbnailPath = freezed,
    Object? deadline = freezed,
    Object? processedAt = freezed,
    Object? responsiblePerson = freezed,
    Object? completedAt = freezed,
    Object? assignedTo = freezed,
    Object? involvedPersons = null,
  }) {
    return _then(_$EventEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      expiresAt: freezed == expiresAt
          ? _value.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      occuredAt: freezed == occuredAt
          ? _value.occuredAt
          : occuredAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      floor: freezed == floor
          ? _value.floor
          : floor // ignore: cast_nullable_to_non_nullable
              as int?,
      camera: freezed == camera
          ? _value.camera
          : camera // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as EventType,
      videoUrl: freezed == videoUrl
          ? _value.videoUrl
          : videoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      videoThumbnailPath: freezed == videoThumbnailPath
          ? _value.videoThumbnailPath
          : videoThumbnailPath // ignore: cast_nullable_to_non_nullable
              as String?,
      deadline: freezed == deadline
          ? _value.deadline
          : deadline // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      processedAt: freezed == processedAt
          ? _value.processedAt
          : processedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      responsiblePerson: freezed == responsiblePerson
          ? _value.responsiblePerson
          : responsiblePerson // ignore: cast_nullable_to_non_nullable
              as int?,
      completedAt: freezed == completedAt
          ? _value.completedAt
          : completedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      assignedTo: freezed == assignedTo
          ? _value.assignedTo
          : assignedTo // ignore: cast_nullable_to_non_nullable
              as UserEntity?,
      involvedPersons: null == involvedPersons
          ? _value._involvedPersons
          : involvedPersons // ignore: cast_nullable_to_non_nullable
              as List<SuspectEntity>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EventEntityImpl implements _EventEntity {
  _$EventEntityImpl(
      {required this.id,
      this.createdAt,
      this.expiresAt,
      this.occuredAt,
      this.location,
      this.floor,
      this.camera,
      this.status,
      this.description,
      required this.type,
      this.videoUrl,
      this.videoThumbnailPath,
      this.deadline,
      this.processedAt,
      this.responsiblePerson,
      this.completedAt,
      this.assignedTo,
      final List<SuspectEntity> involvedPersons = const []})
      : _involvedPersons = involvedPersons;

  factory _$EventEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$EventEntityImplFromJson(json);

  @override
  final int id;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? expiresAt;
  @override
  final DateTime? occuredAt;
  @override
  final String? location;
  @override
  final int? floor;
  @override
  final String? camera;
  @override
  final String? status;
  @override
  final String? description;
  @override
  final EventType type;
  @override
  final String? videoUrl;
  @override
  final String? videoThumbnailPath;
  @override
  final DateTime? deadline;
  @override
  final DateTime? processedAt;
  @override
  final int? responsiblePerson;
  @override
  final DateTime? completedAt;
  @override
  final UserEntity? assignedTo;
  final List<SuspectEntity> _involvedPersons;
  @override
  @JsonKey()
  List<SuspectEntity> get involvedPersons {
    if (_involvedPersons is EqualUnmodifiableListView) return _involvedPersons;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_involvedPersons);
  }

  @override
  String toString() {
    return 'EventEntity(id: $id, createdAt: $createdAt, expiresAt: $expiresAt, occuredAt: $occuredAt, location: $location, floor: $floor, camera: $camera, status: $status, description: $description, type: $type, videoUrl: $videoUrl, videoThumbnailPath: $videoThumbnailPath, deadline: $deadline, processedAt: $processedAt, responsiblePerson: $responsiblePerson, completedAt: $completedAt, assignedTo: $assignedTo, involvedPersons: $involvedPersons)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EventEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.expiresAt, expiresAt) ||
                other.expiresAt == expiresAt) &&
            (identical(other.occuredAt, occuredAt) ||
                other.occuredAt == occuredAt) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.floor, floor) || other.floor == floor) &&
            (identical(other.camera, camera) || other.camera == camera) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.videoUrl, videoUrl) ||
                other.videoUrl == videoUrl) &&
            (identical(other.videoThumbnailPath, videoThumbnailPath) ||
                other.videoThumbnailPath == videoThumbnailPath) &&
            (identical(other.deadline, deadline) ||
                other.deadline == deadline) &&
            (identical(other.processedAt, processedAt) ||
                other.processedAt == processedAt) &&
            (identical(other.responsiblePerson, responsiblePerson) ||
                other.responsiblePerson == responsiblePerson) &&
            (identical(other.completedAt, completedAt) ||
                other.completedAt == completedAt) &&
            (identical(other.assignedTo, assignedTo) ||
                other.assignedTo == assignedTo) &&
            const DeepCollectionEquality()
                .equals(other._involvedPersons, _involvedPersons));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      createdAt,
      expiresAt,
      occuredAt,
      location,
      floor,
      camera,
      status,
      description,
      type,
      videoUrl,
      videoThumbnailPath,
      deadline,
      processedAt,
      responsiblePerson,
      completedAt,
      assignedTo,
      const DeepCollectionEquality().hash(_involvedPersons));

  /// Create a copy of EventEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EventEntityImplCopyWith<_$EventEntityImpl> get copyWith =>
      __$$EventEntityImplCopyWithImpl<_$EventEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EventEntityImplToJson(
      this,
    );
  }
}

abstract class _EventEntity implements EventEntity {
  factory _EventEntity(
      {required final int id,
      final DateTime? createdAt,
      final DateTime? expiresAt,
      final DateTime? occuredAt,
      final String? location,
      final int? floor,
      final String? camera,
      final String? status,
      final String? description,
      required final EventType type,
      final String? videoUrl,
      final String? videoThumbnailPath,
      final DateTime? deadline,
      final DateTime? processedAt,
      final int? responsiblePerson,
      final DateTime? completedAt,
      final UserEntity? assignedTo,
      final List<SuspectEntity> involvedPersons}) = _$EventEntityImpl;

  factory _EventEntity.fromJson(Map<String, dynamic> json) =
      _$EventEntityImpl.fromJson;

  @override
  int get id;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get expiresAt;
  @override
  DateTime? get occuredAt;
  @override
  String? get location;
  @override
  int? get floor;
  @override
  String? get camera;
  @override
  String? get status;
  @override
  String? get description;
  @override
  EventType get type;
  @override
  String? get videoUrl;
  @override
  String? get videoThumbnailPath;
  @override
  DateTime? get deadline;
  @override
  DateTime? get processedAt;
  @override
  int? get responsiblePerson;
  @override
  DateTime? get completedAt;
  @override
  UserEntity? get assignedTo;
  @override
  List<SuspectEntity> get involvedPersons;

  /// Create a copy of EventEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EventEntityImplCopyWith<_$EventEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
