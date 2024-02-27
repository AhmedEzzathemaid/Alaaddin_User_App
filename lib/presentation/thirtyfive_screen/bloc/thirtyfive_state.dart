// ignore_for_file: must_be_immutable

part of 'thirtyfive_bloc.dart';

/// Represents the state of Thirtyfive in the application.
class ThirtyfiveState extends Equatable {
  ThirtyfiveState({this.thirtyfiveModelObj});

  ThirtyfiveModel? thirtyfiveModelObj;

  @override
  List<Object?> get props => [
        thirtyfiveModelObj,
      ];

  ThirtyfiveState copyWith({ThirtyfiveModel? thirtyfiveModelObj}) {
    return ThirtyfiveState(
      thirtyfiveModelObj: thirtyfiveModelObj ?? this.thirtyfiveModelObj,
    );
  }
}
