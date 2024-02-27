// ignore_for_file: must_be_immutable

part of 'fortythree_bloc.dart';

/// Represents the state of Fortythree in the application.
class FortythreeState extends Equatable {
  FortythreeState({
    this.sortBy = "",
    this.fortythreeModelObj,
  });

  FortythreeModel? fortythreeModelObj;

  String sortBy;

  @override
  List<Object?> get props => [
        sortBy,
        fortythreeModelObj,
      ];

  FortythreeState copyWith({
    String? sortBy,
    FortythreeModel? fortythreeModelObj,
  }) {
    return FortythreeState(
      sortBy: sortBy ?? this.sortBy,
      fortythreeModelObj: fortythreeModelObj ?? this.fortythreeModelObj,
    );
  }
}
