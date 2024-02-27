// ignore_for_file: must_be_immutable

part of 'thirtynine_bloc.dart';

/// Represents the state of Thirtynine in the application.
class ThirtynineState extends Equatable {
  ThirtynineState({
    this.searchController,
    this.otpController,
    this.thirtynineModelObj,
  });

  TextEditingController? searchController;

  TextEditingController? otpController;

  ThirtynineModel? thirtynineModelObj;

  @override
  List<Object?> get props => [
        searchController,
        otpController,
        thirtynineModelObj,
      ];

  ThirtynineState copyWith({
    TextEditingController? searchController,
    TextEditingController? otpController,
    ThirtynineModel? thirtynineModelObj,
  }) {
    return ThirtynineState(
      searchController: searchController ?? this.searchController,
      otpController: otpController ?? this.otpController,
      thirtynineModelObj: thirtynineModelObj ?? this.thirtynineModelObj,
    );
  }
}
