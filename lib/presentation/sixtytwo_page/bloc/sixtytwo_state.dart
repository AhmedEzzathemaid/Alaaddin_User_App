// ignore_for_file: must_be_immutable

part of 'sixtytwo_bloc.dart';

/// Represents the state of Sixtytwo in the application.
class SixtytwoState extends Equatable {
  SixtytwoState({this.sixtytwoModelObj});

  SixtytwoModel? sixtytwoModelObj;

  @override
  List<Object?> get props => [
        sixtytwoModelObj,
      ];

  SixtytwoState copyWith({SixtytwoModel? sixtytwoModelObj}) {
    return SixtytwoState(
      sixtytwoModelObj: sixtytwoModelObj ?? this.sixtytwoModelObj,
    );
  }
}
