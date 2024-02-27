// ignore_for_file: must_be_immutable

part of 'seventyeight_bloc.dart';

/// Represents the state of Seventyeight in the application.
class SeventyeightState extends Equatable {
  SeventyeightState({this.seventyeightModelObj});

  SeventyeightModel? seventyeightModelObj;

  @override
  List<Object?> get props => [
        seventyeightModelObj,
      ];

  SeventyeightState copyWith({SeventyeightModel? seventyeightModelObj}) {
    return SeventyeightState(
      seventyeightModelObj: seventyeightModelObj ?? this.seventyeightModelObj,
    );
  }
}
