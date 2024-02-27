// ignore_for_file: must_be_immutable

part of 'ninetytwo_bloc.dart';

/// Represents the state of Ninetytwo in the application.
class NinetytwoState extends Equatable {
  NinetytwoState({this.ninetytwoModelObj});

  NinetytwoModel? ninetytwoModelObj;

  @override
  List<Object?> get props => [
        ninetytwoModelObj,
      ];

  NinetytwoState copyWith({NinetytwoModel? ninetytwoModelObj}) {
    return NinetytwoState(
      ninetytwoModelObj: ninetytwoModelObj ?? this.ninetytwoModelObj,
    );
  }
}
