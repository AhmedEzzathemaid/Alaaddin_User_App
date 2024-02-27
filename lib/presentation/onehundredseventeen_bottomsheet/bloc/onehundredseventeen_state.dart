// ignore_for_file: must_be_immutable

part of 'onehundredseventeen_bloc.dart';

/// Represents the state of Onehundredseventeen in the application.
class OnehundredseventeenState extends Equatable {
  OnehundredseventeenState({this.onehundredseventeenModelObj});

  OnehundredseventeenModel? onehundredseventeenModelObj;

  @override
  List<Object?> get props => [
        onehundredseventeenModelObj,
      ];

  OnehundredseventeenState copyWith(
      {OnehundredseventeenModel? onehundredseventeenModelObj}) {
    return OnehundredseventeenState(
      onehundredseventeenModelObj:
          onehundredseventeenModelObj ?? this.onehundredseventeenModelObj,
    );
  }
}
