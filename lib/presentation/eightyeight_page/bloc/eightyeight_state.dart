// ignore_for_file: must_be_immutable

part of 'eightyeight_bloc.dart';

/// Represents the state of Eightyeight in the application.
class EightyeightState extends Equatable {
  EightyeightState({this.eightyeightModelObj});

  EightyeightModel? eightyeightModelObj;

  @override
  List<Object?> get props => [
        eightyeightModelObj,
      ];

  EightyeightState copyWith({EightyeightModel? eightyeightModelObj}) {
    return EightyeightState(
      eightyeightModelObj: eightyeightModelObj ?? this.eightyeightModelObj,
    );
  }
}
