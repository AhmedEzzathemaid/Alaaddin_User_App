// ignore_for_file: must_be_immutable

part of 'fourteen_bloc.dart';

/// Represents the state of Fourteen in the application.
class FourteenState extends Equatable {
  FourteenState({this.fourteenModelObj});

  FourteenModel? fourteenModelObj;

  @override
  List<Object?> get props => [
        fourteenModelObj,
      ];

  FourteenState copyWith({FourteenModel? fourteenModelObj}) {
    return FourteenState(
      fourteenModelObj: fourteenModelObj ?? this.fourteenModelObj,
    );
  }
}
