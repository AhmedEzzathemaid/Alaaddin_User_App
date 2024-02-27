// ignore_for_file: must_be_immutable

part of 'fiftyseven_bloc.dart';

/// Represents the state of Fiftyseven in the application.
class FiftysevenState extends Equatable {
  FiftysevenState({
    this.isSelectedSwitch = false,
    this.fiftysevenModelObj,
  });

  FiftysevenModel? fiftysevenModelObj;

  bool isSelectedSwitch;

  @override
  List<Object?> get props => [
        isSelectedSwitch,
        fiftysevenModelObj,
      ];

  FiftysevenState copyWith({
    bool? isSelectedSwitch,
    FiftysevenModel? fiftysevenModelObj,
  }) {
    return FiftysevenState(
      isSelectedSwitch: isSelectedSwitch ?? this.isSelectedSwitch,
      fiftysevenModelObj: fiftysevenModelObj ?? this.fiftysevenModelObj,
    );
  }
}
