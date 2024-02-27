// ignore_for_file: must_be_immutable

part of 'twenty_bloc.dart';

/// Represents the state of Twenty in the application.
class TwentyState extends Equatable {
  TwentyState({this.twentyModelObj});

  TwentyModel? twentyModelObj;

  @override
  List<Object?> get props => [
        twentyModelObj,
      ];

  TwentyState copyWith({TwentyModel? twentyModelObj}) {
    return TwentyState(
      twentyModelObj: twentyModelObj ?? this.twentyModelObj,
    );
  }
}
