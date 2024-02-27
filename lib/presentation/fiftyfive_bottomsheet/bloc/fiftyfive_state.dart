// ignore_for_file: must_be_immutable

part of 'fiftyfive_bloc.dart';

/// Represents the state of Fiftyfive in the application.
class FiftyfiveState extends Equatable {
  FiftyfiveState({this.fiftyfiveModelObj});

  FiftyfiveModel? fiftyfiveModelObj;

  @override
  List<Object?> get props => [
        fiftyfiveModelObj,
      ];

  FiftyfiveState copyWith({FiftyfiveModel? fiftyfiveModelObj}) {
    return FiftyfiveState(
      fiftyfiveModelObj: fiftyfiveModelObj ?? this.fiftyfiveModelObj,
    );
  }
}
