// ignore_for_file: must_be_immutable

part of 'onehundredtwenty_bloc.dart';

/// Represents the state of Onehundredtwenty in the application.
class OnehundredtwentyState extends Equatable {
  OnehundredtwentyState({
    this.commentController,
    this.onehundredtwentyModelObj,
  });

  TextEditingController? commentController;

  OnehundredtwentyModel? onehundredtwentyModelObj;

  @override
  List<Object?> get props => [
        commentController,
        onehundredtwentyModelObj,
      ];

  OnehundredtwentyState copyWith({
    TextEditingController? commentController,
    OnehundredtwentyModel? onehundredtwentyModelObj,
  }) {
    return OnehundredtwentyState(
      commentController: commentController ?? this.commentController,
      onehundredtwentyModelObj:
          onehundredtwentyModelObj ?? this.onehundredtwentyModelObj,
    );
  }
}
