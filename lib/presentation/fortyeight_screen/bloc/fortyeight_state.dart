// ignore_for_file: must_be_immutable

part of 'fortyeight_bloc.dart';

/// Represents the state of Fortyeight in the application.
class FortyeightState extends Equatable {
  FortyeightState({
    this.sliderIndex = 0,
    this.fortyeightModelObj,
  });

  FortyeightModel? fortyeightModelObj;

  int sliderIndex;

  @override
  List<Object?> get props => [
        sliderIndex,
        fortyeightModelObj,
      ];

  FortyeightState copyWith({
    int? sliderIndex,
    FortyeightModel? fortyeightModelObj,
  }) {
    return FortyeightState(
      sliderIndex: sliderIndex ?? this.sliderIndex,
      fortyeightModelObj: fortyeightModelObj ?? this.fortyeightModelObj,
    );
  }
}
