// ignore_for_file: must_be_immutable

part of 'onehundredtwentytwo_bloc.dart';

/// Represents the state of Onehundredtwentytwo in the application.
class OnehundredtwentytwoState extends Equatable {
  OnehundredtwentytwoState({
    this.questionThreeController,
    this.onehundredtwentytwoModelObj,
  });

  TextEditingController? questionThreeController;

  OnehundredtwentytwoModel? onehundredtwentytwoModelObj;

  @override
  List<Object?> get props => [
        questionThreeController,
        onehundredtwentytwoModelObj,
      ];

  OnehundredtwentytwoState copyWith({
    TextEditingController? questionThreeController,
    OnehundredtwentytwoModel? onehundredtwentytwoModelObj,
  }) {
    return OnehundredtwentytwoState(
      questionThreeController:
          questionThreeController ?? this.questionThreeController,
      onehundredtwentytwoModelObj:
          onehundredtwentytwoModelObj ?? this.onehundredtwentytwoModelObj,
    );
  }
}
