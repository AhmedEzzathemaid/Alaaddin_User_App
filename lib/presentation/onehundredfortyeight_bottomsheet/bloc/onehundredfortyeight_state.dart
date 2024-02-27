// ignore_for_file: must_be_immutable

part of 'onehundredfortyeight_bloc.dart';

/// Represents the state of Onehundredfortyeight in the application.
class OnehundredfortyeightState extends Equatable {
  OnehundredfortyeightState({this.onehundredfortyeightModelObj});

  OnehundredfortyeightModel? onehundredfortyeightModelObj;

  @override
  List<Object?> get props => [
        onehundredfortyeightModelObj,
      ];

  OnehundredfortyeightState copyWith(
      {OnehundredfortyeightModel? onehundredfortyeightModelObj}) {
    return OnehundredfortyeightState(
      onehundredfortyeightModelObj:
          onehundredfortyeightModelObj ?? this.onehundredfortyeightModelObj,
    );
  }
}
