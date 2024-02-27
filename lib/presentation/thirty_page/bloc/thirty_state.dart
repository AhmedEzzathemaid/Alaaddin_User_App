// ignore_for_file: must_be_immutable

part of 'thirty_bloc.dart';

/// Represents the state of Thirty in the application.
class ThirtyState extends Equatable {
  ThirtyState({this.thirtyModelObj});

  ThirtyModel? thirtyModelObj;

  @override
  List<Object?> get props => [
        thirtyModelObj,
      ];

  ThirtyState copyWith({ThirtyModel? thirtyModelObj}) {
    return ThirtyState(
      thirtyModelObj: thirtyModelObj ?? this.thirtyModelObj,
    );
  }
}
