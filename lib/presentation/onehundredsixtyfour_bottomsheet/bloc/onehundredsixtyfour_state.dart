// ignore_for_file: must_be_immutable

part of 'onehundredsixtyfour_bloc.dart';

/// Represents the state of Onehundredsixtyfour in the application.
class OnehundredsixtyfourState extends Equatable {
  OnehundredsixtyfourState({
    this.otpController,
    this.onehundredsixtyfourModelObj,
  });

  TextEditingController? otpController;

  OnehundredsixtyfourModel? onehundredsixtyfourModelObj;

  @override
  List<Object?> get props => [
        otpController,
        onehundredsixtyfourModelObj,
      ];

  OnehundredsixtyfourState copyWith({
    TextEditingController? otpController,
    OnehundredsixtyfourModel? onehundredsixtyfourModelObj,
  }) {
    return OnehundredsixtyfourState(
      otpController: otpController ?? this.otpController,
      onehundredsixtyfourModelObj:
          onehundredsixtyfourModelObj ?? this.onehundredsixtyfourModelObj,
    );
  }
}
