// ignore_for_file: must_be_immutable

part of 'sixtythree_bloc.dart';

/// Represents the state of Sixtythree in the application.
class SixtythreeState extends Equatable {
  SixtythreeState({this.sixtythreeModelObj});

  SixtythreeModel? sixtythreeModelObj;

  @override
  List<Object?> get props => [
        sixtythreeModelObj,
      ];

  SixtythreeState copyWith({SixtythreeModel? sixtythreeModelObj}) {
    return SixtythreeState(
      sixtythreeModelObj: sixtythreeModelObj ?? this.sixtythreeModelObj,
    );
  }
}
