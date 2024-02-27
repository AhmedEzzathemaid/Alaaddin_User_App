// ignore_for_file: must_be_immutable

part of 'onehundredsixtyeight_bloc.dart';

/// Represents the state of Onehundredsixtyeight in the application.
class OnehundredsixtyeightState extends Equatable {
  OnehundredsixtyeightState({this.onehundredsixtyeightModelObj});

  OnehundredsixtyeightModel? onehundredsixtyeightModelObj;

  @override
  List<Object?> get props => [
        onehundredsixtyeightModelObj,
      ];

  OnehundredsixtyeightState copyWith(
      {OnehundredsixtyeightModel? onehundredsixtyeightModelObj}) {
    return OnehundredsixtyeightState(
      onehundredsixtyeightModelObj:
          onehundredsixtyeightModelObj ?? this.onehundredsixtyeightModelObj,
    );
  }
}
