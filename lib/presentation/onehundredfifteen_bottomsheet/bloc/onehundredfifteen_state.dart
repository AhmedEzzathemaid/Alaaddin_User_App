// ignore_for_file: must_be_immutable

part of 'onehundredfifteen_bloc.dart';

/// Represents the state of Onehundredfifteen in the application.
class OnehundredfifteenState extends Equatable {
  OnehundredfifteenState({this.onehundredfifteenModelObj});

  OnehundredfifteenModel? onehundredfifteenModelObj;

  @override
  List<Object?> get props => [
        onehundredfifteenModelObj,
      ];

  OnehundredfifteenState copyWith(
      {OnehundredfifteenModel? onehundredfifteenModelObj}) {
    return OnehundredfifteenState(
      onehundredfifteenModelObj:
          onehundredfifteenModelObj ?? this.onehundredfifteenModelObj,
    );
  }
}
