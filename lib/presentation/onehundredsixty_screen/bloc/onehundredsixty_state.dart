// ignore_for_file: must_be_immutable

part of 'onehundredsixty_bloc.dart';

/// Represents the state of Onehundredsixty in the application.
class OnehundredsixtyState extends Equatable {
  OnehundredsixtyState({
    this.otpController,
    this.onehundredsixtyModelObj,
  });

  TextEditingController? otpController;

  OnehundredsixtyModel? onehundredsixtyModelObj;

  @override
  List<Object?> get props => [
        otpController,
        onehundredsixtyModelObj,
      ];

  OnehundredsixtyState copyWith({
    TextEditingController? otpController,
    OnehundredsixtyModel? onehundredsixtyModelObj,
  }) {
    return OnehundredsixtyState(
      otpController: otpController ?? this.otpController,
      onehundredsixtyModelObj:
          onehundredsixtyModelObj ?? this.onehundredsixtyModelObj,
    );
  }
}
