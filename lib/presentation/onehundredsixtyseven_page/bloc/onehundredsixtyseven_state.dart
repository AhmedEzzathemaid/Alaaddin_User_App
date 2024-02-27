// ignore_for_file: must_be_immutable

part of 'onehundredsixtyseven_bloc.dart';

/// Represents the state of Onehundredsixtyseven in the application.
class OnehundredsixtysevenState extends Equatable {
  OnehundredsixtysevenState({this.onehundredsixtysevenModelObj});

  OnehundredsixtysevenModel? onehundredsixtysevenModelObj;

  @override
  List<Object?> get props => [
        onehundredsixtysevenModelObj,
      ];

  OnehundredsixtysevenState copyWith(
      {OnehundredsixtysevenModel? onehundredsixtysevenModelObj}) {
    return OnehundredsixtysevenState(
      onehundredsixtysevenModelObj:
          onehundredsixtysevenModelObj ?? this.onehundredsixtysevenModelObj,
    );
  }
}
