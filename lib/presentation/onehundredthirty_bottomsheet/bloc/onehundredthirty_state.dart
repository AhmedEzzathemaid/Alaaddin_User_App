// ignore_for_file: must_be_immutable

part of 'onehundredthirty_bloc.dart';

/// Represents the state of Onehundredthirty in the application.
class OnehundredthirtyState extends Equatable {
  OnehundredthirtyState({
    this.otpController,
    this.onehundredthirtyModelObj,
  });

  TextEditingController? otpController;

  OnehundredthirtyModel? onehundredthirtyModelObj;

  @override
  List<Object?> get props => [
        otpController,
        onehundredthirtyModelObj,
      ];

  OnehundredthirtyState copyWith({
    TextEditingController? otpController,
    OnehundredthirtyModel? onehundredthirtyModelObj,
  }) {
    return OnehundredthirtyState(
      otpController: otpController ?? this.otpController,
      onehundredthirtyModelObj:
          onehundredthirtyModelObj ?? this.onehundredthirtyModelObj,
    );
  }
}
