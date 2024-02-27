// ignore_for_file: must_be_immutable

part of 'twentyseven_bloc.dart';

/// Represents the state of Twentyseven in the application.
class TwentysevenState extends Equatable {
  TwentysevenState({this.twentysevenModelObj});

  TwentysevenModel? twentysevenModelObj;

  @override
  List<Object?> get props => [
        twentysevenModelObj,
      ];

  TwentysevenState copyWith({TwentysevenModel? twentysevenModelObj}) {
    return TwentysevenState(
      twentysevenModelObj: twentysevenModelObj ?? this.twentysevenModelObj,
    );
  }
}
