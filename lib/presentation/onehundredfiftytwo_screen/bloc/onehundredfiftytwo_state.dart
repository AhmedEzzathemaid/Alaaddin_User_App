// ignore_for_file: must_be_immutable

part of 'onehundredfiftytwo_bloc.dart';

/// Represents the state of Onehundredfiftytwo in the application.
class OnehundredfiftytwoState extends Equatable {
  OnehundredfiftytwoState({this.onehundredfiftytwoModelObj});

  OnehundredfiftytwoModel? onehundredfiftytwoModelObj;

  @override
  List<Object?> get props => [
        onehundredfiftytwoModelObj,
      ];

  OnehundredfiftytwoState copyWith(
      {OnehundredfiftytwoModel? onehundredfiftytwoModelObj}) {
    return OnehundredfiftytwoState(
      onehundredfiftytwoModelObj:
          onehundredfiftytwoModelObj ?? this.onehundredfiftytwoModelObj,
    );
  }
}
