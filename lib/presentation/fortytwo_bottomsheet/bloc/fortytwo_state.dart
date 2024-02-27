// ignore_for_file: must_be_immutable

part of 'fortytwo_bloc.dart';

/// Represents the state of Fortytwo in the application.
class FortytwoState extends Equatable {
  FortytwoState({
    this.searchController,
    this.fortytwoModelObj,
  });

  TextEditingController? searchController;

  FortytwoModel? fortytwoModelObj;

  @override
  List<Object?> get props => [
        searchController,
        fortytwoModelObj,
      ];

  FortytwoState copyWith({
    TextEditingController? searchController,
    FortytwoModel? fortytwoModelObj,
  }) {
    return FortytwoState(
      searchController: searchController ?? this.searchController,
      fortytwoModelObj: fortytwoModelObj ?? this.fortytwoModelObj,
    );
  }
}
