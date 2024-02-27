// ignore_for_file: must_be_immutable

part of 'fiftynine_bloc.dart';

/// Represents the state of Fiftynine in the application.
class FiftynineState extends Equatable {
  FiftynineState({this.fiftynineModelObj});

  FiftynineModel? fiftynineModelObj;

  @override
  List<Object?> get props => [
        fiftynineModelObj,
      ];

  FiftynineState copyWith({FiftynineModel? fiftynineModelObj}) {
    return FiftynineState(
      fiftynineModelObj: fiftynineModelObj ?? this.fiftynineModelObj,
    );
  }
}
