// ignore_for_file: must_be_immutable

part of 'eightytwo_bloc.dart';

/// Represents the state of Eightytwo in the application.
class EightytwoState extends Equatable {
  EightytwoState({this.eightytwoModelObj});

  EightytwoModel? eightytwoModelObj;

  @override
  List<Object?> get props => [
        eightytwoModelObj,
      ];

  EightytwoState copyWith({EightytwoModel? eightytwoModelObj}) {
    return EightytwoState(
      eightytwoModelObj: eightytwoModelObj ?? this.eightytwoModelObj,
    );
  }
}
