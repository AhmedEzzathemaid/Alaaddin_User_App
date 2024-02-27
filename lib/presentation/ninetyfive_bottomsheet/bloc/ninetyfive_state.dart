// ignore_for_file: must_be_immutable

part of 'ninetyfive_bloc.dart';

/// Represents the state of Ninetyfive in the application.
class NinetyfiveState extends Equatable {
  NinetyfiveState({this.ninetyfiveModelObj});

  NinetyfiveModel? ninetyfiveModelObj;

  @override
  List<Object?> get props => [
        ninetyfiveModelObj,
      ];

  NinetyfiveState copyWith({NinetyfiveModel? ninetyfiveModelObj}) {
    return NinetyfiveState(
      ninetyfiveModelObj: ninetyfiveModelObj ?? this.ninetyfiveModelObj,
    );
  }
}
