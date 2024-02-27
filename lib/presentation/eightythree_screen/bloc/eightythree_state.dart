// ignore_for_file: must_be_immutable

part of 'eightythree_bloc.dart';

/// Represents the state of Eightythree in the application.
class EightythreeState extends Equatable {
  EightythreeState({
    this.durationController,
    this.group1000001174Controller,
    this.group1000001168Controller,
    this.emailController,
    this.emailController1,
    this.eightythreeModelObj,
  });

  TextEditingController? durationController;

  TextEditingController? group1000001174Controller;

  TextEditingController? group1000001168Controller;

  TextEditingController? emailController;

  TextEditingController? emailController1;

  EightythreeModel? eightythreeModelObj;

  @override
  List<Object?> get props => [
        durationController,
        group1000001174Controller,
        group1000001168Controller,
        emailController,
        emailController1,
        eightythreeModelObj,
      ];

  EightythreeState copyWith({
    TextEditingController? durationController,
    TextEditingController? group1000001174Controller,
    TextEditingController? group1000001168Controller,
    TextEditingController? emailController,
    TextEditingController? emailController1,
    EightythreeModel? eightythreeModelObj,
  }) {
    return EightythreeState(
      durationController: durationController ?? this.durationController,
      group1000001174Controller:
          group1000001174Controller ?? this.group1000001174Controller,
      group1000001168Controller:
          group1000001168Controller ?? this.group1000001168Controller,
      emailController: emailController ?? this.emailController,
      emailController1: emailController1 ?? this.emailController1,
      eightythreeModelObj: eightythreeModelObj ?? this.eightythreeModelObj,
    );
  }
}
