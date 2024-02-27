// ignore_for_file: must_be_immutable

part of 'thirtyeight_bloc.dart';

/// Represents the state of Thirtyeight in the application.
class ThirtyeightState extends Equatable {
  ThirtyeightState({
    this.searchController,
    this.thirtyeightModelObj,
  });

  TextEditingController? searchController;

  ThirtyeightModel? thirtyeightModelObj;

  @override
  List<Object?> get props => [
        searchController,
        thirtyeightModelObj,
      ];

  ThirtyeightState copyWith({
    TextEditingController? searchController,
    ThirtyeightModel? thirtyeightModelObj,
  }) {
    return ThirtyeightState(
      searchController: searchController ?? this.searchController,
      thirtyeightModelObj: thirtyeightModelObj ?? this.thirtyeightModelObj,
    );
  }
}
