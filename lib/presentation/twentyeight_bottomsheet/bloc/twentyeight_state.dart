// ignore_for_file: must_be_immutable

part of 'twentyeight_bloc.dart';

/// Represents the state of Twentyeight in the application.
class TwentyeightState extends Equatable {
  TwentyeightState({
    this.otpController,
    this.twentyeightModelObj,
  });

  TextEditingController? otpController;

  TwentyeightModel? twentyeightModelObj;

  @override
  List<Object?> get props => [
        otpController,
        twentyeightModelObj,
      ];

  TwentyeightState copyWith({
    TextEditingController? otpController,
    TwentyeightModel? twentyeightModelObj,
  }) {
    return TwentyeightState(
      otpController: otpController ?? this.otpController,
      twentyeightModelObj: twentyeightModelObj ?? this.twentyeightModelObj,
    );
  }
}
