// ignore_for_file: must_be_immutable

part of 'twentynine_bloc.dart';

/// Represents the state of Twentynine in the application.
class TwentynineState extends Equatable {
  TwentynineState({
    this.sortBy = "",
    this.twentynineModelObj,
  });

  TwentynineModel? twentynineModelObj;

  String sortBy;

  @override
  List<Object?> get props => [
        sortBy,
        twentynineModelObj,
      ];

  TwentynineState copyWith({
    String? sortBy,
    TwentynineModel? twentynineModelObj,
  }) {
    return TwentynineState(
      sortBy: sortBy ?? this.sortBy,
      twentynineModelObj: twentynineModelObj ?? this.twentynineModelObj,
    );
  }
}
