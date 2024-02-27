// ignore_for_file: must_be_immutable

part of 'twentytwo_bloc.dart';

/// Represents the state of Twentytwo in the application.
class TwentytwoState extends Equatable {
  TwentytwoState({
    this.otpController,
    this.twentytwoModelObj,
  });

  TextEditingController? otpController;

  TwentytwoModel? twentytwoModelObj;

  @override
  List<Object?> get props => [
        otpController,
        twentytwoModelObj,
      ];

  TwentytwoState copyWith({
    TextEditingController? otpController,
    TwentytwoModel? twentytwoModelObj,
  }) {
    return TwentytwoState(
      otpController: otpController ?? this.otpController,
      twentytwoModelObj: twentytwoModelObj ?? this.twentytwoModelObj,
    );
  }
}
