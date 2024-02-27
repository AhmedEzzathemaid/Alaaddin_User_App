// ignore_for_file: must_be_immutable

part of 'eightyfour_bloc.dart';

/// Represents the state of Eightyfour in the application.
class EightyfourState extends Equatable {
  EightyfourState({
    this.emailController,
    this.emailController1,
    this.eightyfourModelObj,
  });

  TextEditingController? emailController;

  TextEditingController? emailController1;

  EightyfourModel? eightyfourModelObj;

  @override
  List<Object?> get props => [
        emailController,
        emailController1,
        eightyfourModelObj,
      ];

  EightyfourState copyWith({
    TextEditingController? emailController,
    TextEditingController? emailController1,
    EightyfourModel? eightyfourModelObj,
  }) {
    return EightyfourState(
      emailController: emailController ?? this.emailController,
      emailController1: emailController1 ?? this.emailController1,
      eightyfourModelObj: eightyfourModelObj ?? this.eightyfourModelObj,
    );
  }
}
