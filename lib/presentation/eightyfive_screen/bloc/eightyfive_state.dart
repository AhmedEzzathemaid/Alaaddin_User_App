// ignore_for_file: must_be_immutable

part of 'eightyfive_bloc.dart';

/// Represents the state of Eightyfive in the application.
class EightyfiveState extends Equatable {
  EightyfiveState({
    this.emailController,
    this.eightyfiveModelObj,
  });

  TextEditingController? emailController;

  EightyfiveModel? eightyfiveModelObj;

  @override
  List<Object?> get props => [
        emailController,
        eightyfiveModelObj,
      ];

  EightyfiveState copyWith({
    TextEditingController? emailController,
    EightyfiveModel? eightyfiveModelObj,
  }) {
    return EightyfiveState(
      emailController: emailController ?? this.emailController,
      eightyfiveModelObj: eightyfiveModelObj ?? this.eightyfiveModelObj,
    );
  }
}
