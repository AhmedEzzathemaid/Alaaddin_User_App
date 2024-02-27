// ignore_for_file: must_be_immutable

part of 'sixtyeight_bloc.dart';

/// Represents the state of Sixtyeight in the application.
class SixtyeightState extends Equatable {
  SixtyeightState({this.sixtyeightModelObj});

  SixtyeightModel? sixtyeightModelObj;

  @override
  List<Object?> get props => [
        sixtyeightModelObj,
      ];

  SixtyeightState copyWith({SixtyeightModel? sixtyeightModelObj}) {
    return SixtyeightState(
      sixtyeightModelObj: sixtyeightModelObj ?? this.sixtyeightModelObj,
    );
  }
}
