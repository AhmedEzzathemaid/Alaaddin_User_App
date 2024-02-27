// ignore_for_file: must_be_immutable

part of 'onehundredsixtythree_bloc.dart';

/// Represents the state of Onehundredsixtythree in the application.
class OnehundredsixtythreeState extends Equatable {
  OnehundredsixtythreeState({
    this.otpController,
    this.onehundredsixtythreeModelObj,
  });

  TextEditingController? otpController;

  OnehundredsixtythreeModel? onehundredsixtythreeModelObj;

  @override
  List<Object?> get props => [
        otpController,
        onehundredsixtythreeModelObj,
      ];

  OnehundredsixtythreeState copyWith({
    TextEditingController? otpController,
    OnehundredsixtythreeModel? onehundredsixtythreeModelObj,
  }) {
    return OnehundredsixtythreeState(
      otpController: otpController ?? this.otpController,
      onehundredsixtythreeModelObj:
          onehundredsixtythreeModelObj ?? this.onehundredsixtythreeModelObj,
    );
  }
}
