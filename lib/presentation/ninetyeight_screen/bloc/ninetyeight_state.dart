// ignore_for_file: must_be_immutable

part of 'ninetyeight_bloc.dart';

/// Represents the state of Ninetyeight in the application.
class NinetyeightState extends Equatable {
  NinetyeightState({this.ninetyeightModelObj});

  NinetyeightModel? ninetyeightModelObj;

  @override
  List<Object?> get props => [
        ninetyeightModelObj,
      ];

  NinetyeightState copyWith({NinetyeightModel? ninetyeightModelObj}) {
    return NinetyeightState(
      ninetyeightModelObj: ninetyeightModelObj ?? this.ninetyeightModelObj,
    );
  }
}
