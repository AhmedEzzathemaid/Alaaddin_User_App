// ignore_for_file: must_be_immutable

part of 'thirtyseven_bloc.dart';

/// Represents the state of Thirtyseven in the application.
class ThirtysevenState extends Equatable {
  ThirtysevenState({
    this.searchController,
    this.otpController,
    this.thirtysevenModelObj,
  });

  TextEditingController? searchController;

  TextEditingController? otpController;

  ThirtysevenModel? thirtysevenModelObj;

  @override
  List<Object?> get props => [
        searchController,
        otpController,
        thirtysevenModelObj,
      ];

  ThirtysevenState copyWith({
    TextEditingController? searchController,
    TextEditingController? otpController,
    ThirtysevenModel? thirtysevenModelObj,
  }) {
    return ThirtysevenState(
      searchController: searchController ?? this.searchController,
      otpController: otpController ?? this.otpController,
      thirtysevenModelObj: thirtysevenModelObj ?? this.thirtysevenModelObj,
    );
  }
}
