// ignore_for_file: must_be_immutable

part of 'onehundredeighteen_bloc.dart';

/// Represents the state of Onehundredeighteen in the application.
class OnehundredeighteenState extends Equatable {
  OnehundredeighteenState({
    this.commentController,
    this.onehundredeighteenModelObj,
  });

  TextEditingController? commentController;

  OnehundredeighteenModel? onehundredeighteenModelObj;

  @override
  List<Object?> get props => [
        commentController,
        onehundredeighteenModelObj,
      ];

  OnehundredeighteenState copyWith({
    TextEditingController? commentController,
    OnehundredeighteenModel? onehundredeighteenModelObj,
  }) {
    return OnehundredeighteenState(
      commentController: commentController ?? this.commentController,
      onehundredeighteenModelObj:
          onehundredeighteenModelObj ?? this.onehundredeighteenModelObj,
    );
  }
}
