// ignore_for_file: must_be_immutable

part of 'fiftyeight_bloc.dart';

/// Represents the state of Fiftyeight in the application.
class FiftyeightState extends Equatable {
  FiftyeightState({this.fiftyeightModelObj});

  FiftyeightModel? fiftyeightModelObj;

  @override
  List<Object?> get props => [
        fiftyeightModelObj,
      ];

  FiftyeightState copyWith({FiftyeightModel? fiftyeightModelObj}) {
    return FiftyeightState(
      fiftyeightModelObj: fiftyeightModelObj ?? this.fiftyeightModelObj,
    );
  }
}
