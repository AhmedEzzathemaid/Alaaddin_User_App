// ignore_for_file: must_be_immutable

part of 'sixtyfive_bloc.dart';

/// Represents the state of Sixtyfive in the application.
class SixtyfiveState extends Equatable {
  SixtyfiveState({this.sixtyfiveModelObj});

  SixtyfiveModel? sixtyfiveModelObj;

  @override
  List<Object?> get props => [
        sixtyfiveModelObj,
      ];

  SixtyfiveState copyWith({SixtyfiveModel? sixtyfiveModelObj}) {
    return SixtyfiveState(
      sixtyfiveModelObj: sixtyfiveModelObj ?? this.sixtyfiveModelObj,
    );
  }
}
