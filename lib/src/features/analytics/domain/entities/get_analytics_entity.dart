import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kepler_vision/src/features/analytics/domain/entities/analytic_entity.dart';

part 'get_analytics_entity.freezed.dart';
part 'get_analytics_entity.g.dart';

@freezed
class GetAnalyticsEntity with _$GetAnalyticsEntity {
  factory GetAnalyticsEntity({
    required String status,
    required AnalyticEntity data,
  }) = _GetAnalyticsEntity;

  factory GetAnalyticsEntity.fromJson(Map<String, dynamic> json) => _$GetAnalyticsEntityFromJson(json);
}
