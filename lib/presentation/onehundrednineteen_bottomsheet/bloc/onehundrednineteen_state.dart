// ignore_for_file: must_be_immutable

part of 'onehundrednineteen_bloc.dart';

/// Represents the state of Onehundrednineteen in the application.
class OnehundrednineteenState extends Equatable {
  OnehundrednineteenState({
    this.commentController,
    this.onehundrednineteenModelObj,
  });

  TextEditingController? commentController;

  OnehundrednineteenModel? onehundrednineteenModelObj;

  @override
  List<Object?> get props => [
        commentController,
        onehundrednineteenModelObj,
      ];

  OnehundrednineteenState copyWith({
    TextEditingController? commentController,
    OnehundrednineteenModel? onehundrednineteenModelObj,
  }) {
    return OnehundrednineteenState(
      commentController: commentController ?? this.commentController,
      onehundrednineteenModelObj:
          onehundrednineteenModelObj ?? this.onehundrednineteenModelObj,
    );
  }
}
