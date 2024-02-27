// ignore_for_file: must_be_immutable

part of 'twentythree_bloc.dart';

/// Represents the state of Twentythree in the application.
class TwentythreeState extends Equatable {
  TwentythreeState({
    this.otpController,
    this.twentythreeModelObj,
  });

  TextEditingController? otpController;

  TwentythreeModel? twentythreeModelObj;

  @override
  List<Object?> get props => [
        otpController,
        twentythreeModelObj,
      ];

  TwentythreeState copyWith({
    TextEditingController? otpController,
    TwentythreeModel? twentythreeModelObj,
  }) {
    return TwentythreeState(
      otpController: otpController ?? this.otpController,
      twentythreeModelObj: twentythreeModelObj ?? this.twentythreeModelObj,
    );
  }
}
