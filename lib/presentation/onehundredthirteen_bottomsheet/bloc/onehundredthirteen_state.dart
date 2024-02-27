// ignore_for_file: must_be_immutable

part of 'onehundredthirteen_bloc.dart';

/// Represents the state of Onehundredthirteen in the application.
class OnehundredthirteenState extends Equatable {
  OnehundredthirteenState({this.onehundredthirteenModelObj});

  OnehundredthirteenModel? onehundredthirteenModelObj;

  @override
  List<Object?> get props => [
        onehundredthirteenModelObj,
      ];

  OnehundredthirteenState copyWith(
      {OnehundredthirteenModel? onehundredthirteenModelObj}) {
    return OnehundredthirteenState(
      onehundredthirteenModelObj:
          onehundredthirteenModelObj ?? this.onehundredthirteenModelObj,
    );
  }
}
