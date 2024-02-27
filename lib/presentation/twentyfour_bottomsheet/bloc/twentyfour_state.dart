// ignore_for_file: must_be_immutable

part of 'twentyfour_bloc.dart';

/// Represents the state of Twentyfour in the application.
class TwentyfourState extends Equatable {
  TwentyfourState({
    this.otpController,
    this.twentyfourModelObj,
  });

  TextEditingController? otpController;

  TwentyfourModel? twentyfourModelObj;

  @override
  List<Object?> get props => [
        otpController,
        twentyfourModelObj,
      ];

  TwentyfourState copyWith({
    TextEditingController? otpController,
    TwentyfourModel? twentyfourModelObj,
  }) {
    return TwentyfourState(
      otpController: otpController ?? this.otpController,
      twentyfourModelObj: twentyfourModelObj ?? this.twentyfourModelObj,
    );
  }
}
