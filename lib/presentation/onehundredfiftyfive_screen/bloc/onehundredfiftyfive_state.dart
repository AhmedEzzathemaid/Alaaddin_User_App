// ignore_for_file: must_be_immutable

part of 'onehundredfiftyfive_bloc.dart';

/// Represents the state of Onehundredfiftyfive in the application.
class OnehundredfiftyfiveState extends Equatable {
  OnehundredfiftyfiveState({
    this.loremIpsumOneController,
    this.loremIpsumOneController1,
    this.writeHereController,
    this.onehundredfiftyfiveModelObj,
  });

  TextEditingController? loremIpsumOneController;

  TextEditingController? loremIpsumOneController1;

  TextEditingController? writeHereController;

  OnehundredfiftyfiveModel? onehundredfiftyfiveModelObj;

  @override
  List<Object?> get props => [
        loremIpsumOneController,
        loremIpsumOneController1,
        writeHereController,
        onehundredfiftyfiveModelObj,
      ];

  OnehundredfiftyfiveState copyWith({
    TextEditingController? loremIpsumOneController,
    TextEditingController? loremIpsumOneController1,
    TextEditingController? writeHereController,
    OnehundredfiftyfiveModel? onehundredfiftyfiveModelObj,
  }) {
    return OnehundredfiftyfiveState(
      loremIpsumOneController:
          loremIpsumOneController ?? this.loremIpsumOneController,
      loremIpsumOneController1:
          loremIpsumOneController1 ?? this.loremIpsumOneController1,
      writeHereController: writeHereController ?? this.writeHereController,
      onehundredfiftyfiveModelObj:
          onehundredfiftyfiveModelObj ?? this.onehundredfiftyfiveModelObj,
    );
  }
}
