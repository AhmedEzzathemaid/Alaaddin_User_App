// ignore_for_file: must_be_immutable

part of 'fifteen_bloc.dart';

/// Represents the state of Fifteen in the application.
class FifteenState extends Equatable {
  FifteenState({
    this.searchController,
    this.fifteenModelObj,
  });

  TextEditingController? searchController;

  FifteenModel? fifteenModelObj;

  @override
  List<Object?> get props => [
        searchController,
        fifteenModelObj,
      ];

  FifteenState copyWith({
    TextEditingController? searchController,
    FifteenModel? fifteenModelObj,
  }) {
    return FifteenState(
      searchController: searchController ?? this.searchController,
      fifteenModelObj: fifteenModelObj ?? this.fifteenModelObj,
    );
  }
}
