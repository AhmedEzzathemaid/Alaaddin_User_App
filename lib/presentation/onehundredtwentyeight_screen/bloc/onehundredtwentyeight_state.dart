// ignore_for_file: must_be_immutable

part of 'onehundredtwentyeight_bloc.dart';

/// Represents the state of Onehundredtwentyeight in the application.
class OnehundredtwentyeightState extends Equatable {
  OnehundredtwentyeightState({this.onehundredtwentyeightModelObj});

  OnehundredtwentyeightModel? onehundredtwentyeightModelObj;

  @override
  List<Object?> get props => [
        onehundredtwentyeightModelObj,
      ];

  OnehundredtwentyeightState copyWith(
      {OnehundredtwentyeightModel? onehundredtwentyeightModelObj}) {
    return OnehundredtwentyeightState(
      onehundredtwentyeightModelObj:
          onehundredtwentyeightModelObj ?? this.onehundredtwentyeightModelObj,
    );
  }
}
