// ignore_for_file: must_be_immutable

part of 'onehundredtwentyone_bloc.dart';

/// Represents the state of Onehundredtwentyone in the application.
class OnehundredtwentyoneState extends Equatable {
  OnehundredtwentyoneState({
    this.commentController,
    this.onehundredtwentyoneModelObj,
  });

  TextEditingController? commentController;

  OnehundredtwentyoneModel? onehundredtwentyoneModelObj;

  @override
  List<Object?> get props => [
        commentController,
        onehundredtwentyoneModelObj,
      ];

  OnehundredtwentyoneState copyWith({
    TextEditingController? commentController,
    OnehundredtwentyoneModel? onehundredtwentyoneModelObj,
  }) {
    return OnehundredtwentyoneState(
      commentController: commentController ?? this.commentController,
      onehundredtwentyoneModelObj:
          onehundredtwentyoneModelObj ?? this.onehundredtwentyoneModelObj,
    );
  }
}
