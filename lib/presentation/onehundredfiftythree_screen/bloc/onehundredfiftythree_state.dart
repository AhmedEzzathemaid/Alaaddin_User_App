// ignore_for_file: must_be_immutable

part of 'onehundredfiftythree_bloc.dart';

/// Represents the state of Onehundredfiftythree in the application.
class OnehundredfiftythreeState extends Equatable {
  OnehundredfiftythreeState({
    this.loremIpsumOneController,
    this.loremIpsumOneController1,
    this.writeHereController,
    this.onehundredfiftythreeModelObj,
  });

  TextEditingController? loremIpsumOneController;

  TextEditingController? loremIpsumOneController1;

  TextEditingController? writeHereController;

  OnehundredfiftythreeModel? onehundredfiftythreeModelObj;

  @override
  List<Object?> get props => [
        loremIpsumOneController,
        loremIpsumOneController1,
        writeHereController,
        onehundredfiftythreeModelObj,
      ];

  OnehundredfiftythreeState copyWith({
    TextEditingController? loremIpsumOneController,
    TextEditingController? loremIpsumOneController1,
    TextEditingController? writeHereController,
    OnehundredfiftythreeModel? onehundredfiftythreeModelObj,
  }) {
    return OnehundredfiftythreeState(
      loremIpsumOneController:
          loremIpsumOneController ?? this.loremIpsumOneController,
      loremIpsumOneController1:
          loremIpsumOneController1 ?? this.loremIpsumOneController1,
      writeHereController: writeHereController ?? this.writeHereController,
      onehundredfiftythreeModelObj:
          onehundredfiftythreeModelObj ?? this.onehundredfiftythreeModelObj,
    );
  }
}
