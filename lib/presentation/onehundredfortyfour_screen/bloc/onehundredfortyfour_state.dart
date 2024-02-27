// ignore_for_file: must_be_immutable

part of 'onehundredfortyfour_bloc.dart';

/// Represents the state of Onehundredfortyfour in the application.
class OnehundredfortyfourState extends Equatable {
  OnehundredfortyfourState({
    this.descriptionController,
    this.onehundredfortyfourModelObj,
  });

  TextEditingController? descriptionController;

  OnehundredfortyfourModel? onehundredfortyfourModelObj;

  @override
  List<Object?> get props => [
        descriptionController,
        onehundredfortyfourModelObj,
      ];

  OnehundredfortyfourState copyWith({
    TextEditingController? descriptionController,
    OnehundredfortyfourModel? onehundredfortyfourModelObj,
  }) {
    return OnehundredfortyfourState(
      descriptionController:
          descriptionController ?? this.descriptionController,
      onehundredfortyfourModelObj:
          onehundredfortyfourModelObj ?? this.onehundredfortyfourModelObj,
    );
  }
}
