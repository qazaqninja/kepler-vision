import 'package:freezed_annotation/freezed_annotation.dart';

part 'notificaiton_meta_entity.freezed.dart';
part 'notificaiton_meta_entity.g.dart';

@freezed
class NotificaitonMetaEntity with _$NotificaitonMetaEntity {
  factory NotificaitonMetaEntity({
    String? endCursor,
    bool? hasNextPage,
  }) = _NotificaitonMetaEntity;
  factory NotificaitonMetaEntity.fromJson(Map<String, dynamic> json) => _$NotificaitonMetaEntityFromJson(json);
}
