// ignore_for_file: must_be_immutable

part of 'onehundredeight_bloc.dart';

/// Represents the state of Onehundredeight in the application.
class OnehundredeightState extends Equatable {
  OnehundredeightState({this.onehundredeightModelObj});

  OnehundredeightModel? onehundredeightModelObj;

  @override
  List<Object?> get props => [
        onehundredeightModelObj,
      ];

  OnehundredeightState copyWith(
      {OnehundredeightModel? onehundredeightModelObj}) {
    return OnehundredeightState(
      onehundredeightModelObj:
          onehundredeightModelObj ?? this.onehundredeightModelObj,
    );
  }
}
