// ignore_for_file: must_be_immutable

part of 'eightyseven_bloc.dart';

/// Represents the state of Eightyseven in the application.
class EightysevenState extends Equatable {
  EightysevenState({this.eightysevenModelObj});

  EightysevenModel? eightysevenModelObj;

  @override
  List<Object?> get props => [
        eightysevenModelObj,
      ];

  EightysevenState copyWith({EightysevenModel? eightysevenModelObj}) {
    return EightysevenState(
      eightysevenModelObj: eightysevenModelObj ?? this.eightysevenModelObj,
    );
  }
}
