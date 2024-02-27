// ignore_for_file: must_be_immutable

part of 'onehundredseven_bloc.dart';

/// Represents the state of Onehundredseven in the application.
class OnehundredsevenState extends Equatable {
  OnehundredsevenState({this.onehundredsevenModelObj});

  OnehundredsevenModel? onehundredsevenModelObj;

  @override
  List<Object?> get props => [
        onehundredsevenModelObj,
      ];

  OnehundredsevenState copyWith(
      {OnehundredsevenModel? onehundredsevenModelObj}) {
    return OnehundredsevenState(
      onehundredsevenModelObj:
          onehundredsevenModelObj ?? this.onehundredsevenModelObj,
    );
  }
}
