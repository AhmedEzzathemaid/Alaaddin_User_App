// ignore_for_file: must_be_immutable

part of 'eighteen_bloc.dart';

/// Represents the state of Eighteen in the application.
class EighteenState extends Equatable {
  EighteenState({this.eighteenModelObj});

  EighteenModel? eighteenModelObj;

  @override
  List<Object?> get props => [
        eighteenModelObj,
      ];

  EighteenState copyWith({EighteenModel? eighteenModelObj}) {
    return EighteenState(
      eighteenModelObj: eighteenModelObj ?? this.eighteenModelObj,
    );
  }
}
