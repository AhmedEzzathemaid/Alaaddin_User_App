// ignore_for_file: must_be_immutable

part of 'onehundredtwentyseven_bloc.dart';

/// Represents the state of Onehundredtwentyseven in the application.
class OnehundredtwentysevenState extends Equatable {
  OnehundredtwentysevenState({this.onehundredtwentysevenModelObj});

  OnehundredtwentysevenModel? onehundredtwentysevenModelObj;

  @override
  List<Object?> get props => [
        onehundredtwentysevenModelObj,
      ];

  OnehundredtwentysevenState copyWith(
      {OnehundredtwentysevenModel? onehundredtwentysevenModelObj}) {
    return OnehundredtwentysevenState(
      onehundredtwentysevenModelObj:
          onehundredtwentysevenModelObj ?? this.onehundredtwentysevenModelObj,
    );
  }
}
