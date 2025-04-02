part of 'analytic_bloc.dart';

@freezed
class AnalyticState with _$AnalyticState {
  const factory AnalyticState.loading() = _Loading;
  const factory AnalyticState.loaded({
    required AnalyticViewModel viewModel,
  }) = _Loaded;
  const factory AnalyticState.error(String error) = _Error;
}

@freezed
class AnalyticViewModel with _$AnalyticViewModel {
  factory AnalyticViewModel({
    GetAnalyticsEntity? analytics,
    DateFilter? analyticsDateFilter,
    GetHotSpotsEntity? hotSpots,
    GetProblemClassesEntity? problemClasses,
  }) = _AnalyticViewModel;
}
