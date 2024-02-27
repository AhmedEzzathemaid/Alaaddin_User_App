// ignore_for_file: must_be_immutable

part of 'onehundredfiftyfour_bloc.dart';

/// Represents the state of Onehundredfiftyfour in the application.
class OnehundredfiftyfourState extends Equatable {
  OnehundredfiftyfourState({this.onehundredfiftyfourModelObj});

  OnehundredfiftyfourModel? onehundredfiftyfourModelObj;

  @override
  List<Object?> get props => [
        onehundredfiftyfourModelObj,
      ];

  OnehundredfiftyfourState copyWith(
      {OnehundredfiftyfourModel? onehundredfiftyfourModelObj}) {
    return OnehundredfiftyfourState(
      onehundredfiftyfourModelObj:
          onehundredfiftyfourModelObj ?? this.onehundredfiftyfourModelObj,
    );
  }
}
