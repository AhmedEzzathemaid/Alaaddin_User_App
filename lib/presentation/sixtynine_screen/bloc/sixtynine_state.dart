// ignore_for_file: must_be_immutable

part of 'sixtynine_bloc.dart';

/// Represents the state of Sixtynine in the application.
class SixtynineState extends Equatable {
  SixtynineState({
    this.searchController,
    this.sixtynineModelObj,
  });

  TextEditingController? searchController;

  SixtynineModel? sixtynineModelObj;

  @override
  List<Object?> get props => [
        searchController,
        sixtynineModelObj,
      ];

  SixtynineState copyWith({
    TextEditingController? searchController,
    SixtynineModel? sixtynineModelObj,
  }) {
    return SixtynineState(
      searchController: searchController ?? this.searchController,
      sixtynineModelObj: sixtynineModelObj ?? this.sixtynineModelObj,
    );
  }
}
