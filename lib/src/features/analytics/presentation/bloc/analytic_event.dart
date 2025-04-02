part of 'analytic_bloc.dart';

@freezed
class AnalyticEvent with _$AnalyticEvent {
  const factory AnalyticEvent.started() = _Started;

  const factory AnalyticEvent.getEventsCount(GetEventsCountRequest request) = _GetEventCount;
  const factory AnalyticEvent.changeDateFilter(DateFilter dateFilter) = _ChangeDateFilter;
  const factory AnalyticEvent.getHotSpots(GetHotSpotsRequest request) = _GetHotSpots;
  const factory AnalyticEvent.getProblemClasses(GetProblemClassesRequest request) = _GetProblemClasses;
  const factory AnalyticEvent.loadAllData({required String schoolId, DateFilter? dateFilter}) = _LoadAllData;
}
