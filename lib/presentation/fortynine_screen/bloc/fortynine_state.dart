// ignore_for_file: must_be_immutable

part of 'fortynine_bloc.dart';

/// Represents the state of Fortynine in the application.
class FortynineState extends Equatable {
  FortynineState({
    this.otpController,
    this.fortynineModelObj,
  });

  TextEditingController? otpController;

  FortynineModel? fortynineModelObj;

  @override
  List<Object?> get props => [
        otpController,
        fortynineModelObj,
      ];

  FortynineState copyWith({
    TextEditingController? otpController,
    FortynineModel? fortynineModelObj,
  }) {
    return FortynineState(
      otpController: otpController ?? this.otpController,
      fortynineModelObj: fortynineModelObj ?? this.fortynineModelObj,
    );
  }
}
