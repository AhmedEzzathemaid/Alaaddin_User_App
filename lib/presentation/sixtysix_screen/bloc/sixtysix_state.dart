// ignore_for_file: must_be_immutable

part of 'sixtysix_bloc.dart';

/// Represents the state of Sixtysix in the application.
class SixtysixState extends Equatable {
  SixtysixState({
    this.isSelectedSwitch = false,
    this.sixtysixModelObj,
  });

  SixtysixModel? sixtysixModelObj;

  bool isSelectedSwitch;

  @override
  List<Object?> get props => [
        isSelectedSwitch,
        sixtysixModelObj,
      ];

  SixtysixState copyWith({
    bool? isSelectedSwitch,
    SixtysixModel? sixtysixModelObj,
  }) {
    return SixtysixState(
      isSelectedSwitch: isSelectedSwitch ?? this.isSelectedSwitch,
      sixtysixModelObj: sixtysixModelObj ?? this.sixtysixModelObj,
    );
  }
}
