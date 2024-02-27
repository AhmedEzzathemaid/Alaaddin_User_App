// ignore_for_file: must_be_immutable

part of 'seventyseven_bloc.dart';

/// Represents the state of Seventyseven in the application.
class SeventysevenState extends Equatable {
  SeventysevenState({
    this.isSelectedSwitch = false,
    this.seventysevenModelObj,
  });

  SeventysevenModel? seventysevenModelObj;

  bool isSelectedSwitch;

  @override
  List<Object?> get props => [
        isSelectedSwitch,
        seventysevenModelObj,
      ];

  SeventysevenState copyWith({
    bool? isSelectedSwitch,
    SeventysevenModel? seventysevenModelObj,
  }) {
    return SeventysevenState(
      isSelectedSwitch: isSelectedSwitch ?? this.isSelectedSwitch,
      seventysevenModelObj: seventysevenModelObj ?? this.seventysevenModelObj,
    );
  }
}
