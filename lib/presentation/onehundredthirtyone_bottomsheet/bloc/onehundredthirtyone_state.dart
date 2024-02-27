// ignore_for_file: must_be_immutable

part of 'onehundredthirtyone_bloc.dart';

/// Represents the state of Onehundredthirtyone in the application.
class OnehundredthirtyoneState extends Equatable {
  OnehundredthirtyoneState({
    this.otpController,
    this.onehundredthirtyoneModelObj,
  });

  TextEditingController? otpController;

  OnehundredthirtyoneModel? onehundredthirtyoneModelObj;

  @override
  List<Object?> get props => [
        otpController,
        onehundredthirtyoneModelObj,
      ];

  OnehundredthirtyoneState copyWith({
    TextEditingController? otpController,
    OnehundredthirtyoneModel? onehundredthirtyoneModelObj,
  }) {
    return OnehundredthirtyoneState(
      otpController: otpController ?? this.otpController,
      onehundredthirtyoneModelObj:
          onehundredthirtyoneModelObj ?? this.onehundredthirtyoneModelObj,
    );
  }
}
