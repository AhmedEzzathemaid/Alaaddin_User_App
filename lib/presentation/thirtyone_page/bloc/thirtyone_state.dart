// ignore_for_file: must_be_immutable

part of 'thirtyone_bloc.dart';

/// Represents the state of Thirtyone in the application.
class ThirtyoneState extends Equatable {
  ThirtyoneState({this.thirtyoneModelObj});

  ThirtyoneModel? thirtyoneModelObj;

  @override
  List<Object?> get props => [
        thirtyoneModelObj,
      ];

  ThirtyoneState copyWith({ThirtyoneModel? thirtyoneModelObj}) {
    return ThirtyoneState(
      thirtyoneModelObj: thirtyoneModelObj ?? this.thirtyoneModelObj,
    );
  }
}
