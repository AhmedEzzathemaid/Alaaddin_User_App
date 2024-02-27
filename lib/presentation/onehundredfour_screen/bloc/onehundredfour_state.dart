// ignore_for_file: must_be_immutable

part of 'onehundredfour_bloc.dart';

/// Represents the state of Onehundredfour in the application.
class OnehundredfourState extends Equatable {
  OnehundredfourState({this.onehundredfourModelObj});

  OnehundredfourModel? onehundredfourModelObj;

  @override
  List<Object?> get props => [
        onehundredfourModelObj,
      ];

  OnehundredfourState copyWith({OnehundredfourModel? onehundredfourModelObj}) {
    return OnehundredfourState(
      onehundredfourModelObj:
          onehundredfourModelObj ?? this.onehundredfourModelObj,
    );
  }
}
