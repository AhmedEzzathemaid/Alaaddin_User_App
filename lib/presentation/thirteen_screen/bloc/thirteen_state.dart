// ignore_for_file: must_be_immutable

part of 'thirteen_bloc.dart';

/// Represents the state of Thirteen in the application.
class ThirteenState extends Equatable {
  ThirteenState({this.thirteenModelObj});

  ThirteenModel? thirteenModelObj;

  @override
  List<Object?> get props => [
        thirteenModelObj,
      ];

  ThirteenState copyWith({ThirteenModel? thirteenModelObj}) {
    return ThirteenState(
      thirteenModelObj: thirteenModelObj ?? this.thirteenModelObj,
    );
  }
}
