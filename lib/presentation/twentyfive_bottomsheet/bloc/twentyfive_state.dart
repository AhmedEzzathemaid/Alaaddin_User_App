// ignore_for_file: must_be_immutable

part of 'twentyfive_bloc.dart';

/// Represents the state of Twentyfive in the application.
class TwentyfiveState extends Equatable {
  TwentyfiveState({
    this.otpController,
    this.twentyfiveModelObj,
  });

  TextEditingController? otpController;

  TwentyfiveModel? twentyfiveModelObj;

  @override
  List<Object?> get props => [
        otpController,
        twentyfiveModelObj,
      ];

  TwentyfiveState copyWith({
    TextEditingController? otpController,
    TwentyfiveModel? twentyfiveModelObj,
  }) {
    return TwentyfiveState(
      otpController: otpController ?? this.otpController,
      twentyfiveModelObj: twentyfiveModelObj ?? this.twentyfiveModelObj,
    );
  }
}
