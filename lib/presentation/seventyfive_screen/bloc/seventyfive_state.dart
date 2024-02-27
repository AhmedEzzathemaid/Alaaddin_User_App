// ignore_for_file: must_be_immutable

part of 'seventyfive_bloc.dart';

/// Represents the state of Seventyfive in the application.
class SeventyfiveState extends Equatable {
  SeventyfiveState({
    this.isSelectedSwitch = false,
    this.seventyfiveModelObj,
  });

  SeventyfiveModel? seventyfiveModelObj;

  bool isSelectedSwitch;

  @override
  List<Object?> get props => [
        isSelectedSwitch,
        seventyfiveModelObj,
      ];

  SeventyfiveState copyWith({
    bool? isSelectedSwitch,
    SeventyfiveModel? seventyfiveModelObj,
  }) {
    return SeventyfiveState(
      isSelectedSwitch: isSelectedSwitch ?? this.isSelectedSwitch,
      seventyfiveModelObj: seventyfiveModelObj ?? this.seventyfiveModelObj,
    );
  }
}
