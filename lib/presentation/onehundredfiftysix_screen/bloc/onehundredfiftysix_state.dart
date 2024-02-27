// ignore_for_file: must_be_immutable

part of 'onehundredfiftysix_bloc.dart';

/// Represents the state of Onehundredfiftysix in the application.
class OnehundredfiftysixState extends Equatable {
  OnehundredfiftysixState({
    this.loremIpsumOneController,
    this.loremIpsumOneController1,
    this.onehundredfiftysixModelObj,
  });

  TextEditingController? loremIpsumOneController;

  TextEditingController? loremIpsumOneController1;

  OnehundredfiftysixModel? onehundredfiftysixModelObj;

  @override
  List<Object?> get props => [
        loremIpsumOneController,
        loremIpsumOneController1,
        onehundredfiftysixModelObj,
      ];

  OnehundredfiftysixState copyWith({
    TextEditingController? loremIpsumOneController,
    TextEditingController? loremIpsumOneController1,
    OnehundredfiftysixModel? onehundredfiftysixModelObj,
  }) {
    return OnehundredfiftysixState(
      loremIpsumOneController:
          loremIpsumOneController ?? this.loremIpsumOneController,
      loremIpsumOneController1:
          loremIpsumOneController1 ?? this.loremIpsumOneController1,
      onehundredfiftysixModelObj:
          onehundredfiftysixModelObj ?? this.onehundredfiftysixModelObj,
    );
  }
}
