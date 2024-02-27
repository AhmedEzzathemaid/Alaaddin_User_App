// ignore_for_file: must_be_immutable

part of 'onehundredsixteen_bloc.dart';

/// Represents the state of Onehundredsixteen in the application.
class OnehundredsixteenState extends Equatable {
  OnehundredsixteenState({this.onehundredsixteenModelObj});

  OnehundredsixteenModel? onehundredsixteenModelObj;

  @override
  List<Object?> get props => [
        onehundredsixteenModelObj,
      ];

  OnehundredsixteenState copyWith(
      {OnehundredsixteenModel? onehundredsixteenModelObj}) {
    return OnehundredsixteenState(
      onehundredsixteenModelObj:
          onehundredsixteenModelObj ?? this.onehundredsixteenModelObj,
    );
  }
}
