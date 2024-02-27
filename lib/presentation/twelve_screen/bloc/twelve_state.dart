// ignore_for_file: must_be_immutable

part of 'twelve_bloc.dart';

/// Represents the state of Twelve in the application.
class TwelveState extends Equatable {
  TwelveState({
    this.searchController,
    this.twelveModelObj,
  });

  TextEditingController? searchController;

  TwelveModel? twelveModelObj;

  @override
  List<Object?> get props => [
        searchController,
        twelveModelObj,
      ];

  TwelveState copyWith({
    TextEditingController? searchController,
    TwelveModel? twelveModelObj,
  }) {
    return TwelveState(
      searchController: searchController ?? this.searchController,
      twelveModelObj: twelveModelObj ?? this.twelveModelObj,
    );
  }
}
