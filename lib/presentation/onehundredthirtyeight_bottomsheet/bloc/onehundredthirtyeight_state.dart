// ignore_for_file: must_be_immutable

part of 'onehundredthirtyeight_bloc.dart';

/// Represents the state of Onehundredthirtyeight in the application.
class OnehundredthirtyeightState extends Equatable {
  OnehundredthirtyeightState({this.onehundredthirtyeightModelObj});

  OnehundredthirtyeightModel? onehundredthirtyeightModelObj;

  @override
  List<Object?> get props => [
        onehundredthirtyeightModelObj,
      ];

  OnehundredthirtyeightState copyWith(
      {OnehundredthirtyeightModel? onehundredthirtyeightModelObj}) {
    return OnehundredthirtyeightState(
      onehundredthirtyeightModelObj:
          onehundredthirtyeightModelObj ?? this.onehundredthirtyeightModelObj,
    );
  }
}
