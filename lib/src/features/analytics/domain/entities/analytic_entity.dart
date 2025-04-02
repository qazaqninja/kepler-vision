import 'package:freezed_annotation/freezed_annotation.dart';

part 'analytic_entity.freezed.dart';
part 'analytic_entity.g.dart';

@freezed
class AnalyticEntity with _$AnalyticEntity {
  factory AnalyticEntity({
    required int conflictCount,
    required int smokingCount,
    required int cheatingCount,
  }) = _AnalyticEntity;
  factory AnalyticEntity.fromJson(Map<String, dynamic> json) => _$AnalyticEntityFromJson(json);
}
