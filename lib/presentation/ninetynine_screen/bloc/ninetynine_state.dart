// ignore_for_file: must_be_immutable

part of 'ninetynine_bloc.dart';

/// Represents the state of Ninetynine in the application.
class NinetynineState extends Equatable {
  NinetynineState({this.ninetynineModelObj});

  NinetynineModel? ninetynineModelObj;

  @override
  List<Object?> get props => [
        ninetynineModelObj,
      ];

  NinetynineState copyWith({NinetynineModel? ninetynineModelObj}) {
    return NinetynineState(
      ninetynineModelObj: ninetynineModelObj ?? this.ninetynineModelObj,
    );
  }
}
