// ignore_for_file: must_be_immutable

part of 'eightynine_bloc.dart';

/// Represents the state of Eightynine in the application.
class EightynineState extends Equatable {
  EightynineState({this.eightynineModelObj});

  EightynineModel? eightynineModelObj;

  @override
  List<Object?> get props => [
        eightynineModelObj,
      ];

  EightynineState copyWith({EightynineModel? eightynineModelObj}) {
    return EightynineState(
      eightynineModelObj: eightynineModelObj ?? this.eightynineModelObj,
    );
  }
}
