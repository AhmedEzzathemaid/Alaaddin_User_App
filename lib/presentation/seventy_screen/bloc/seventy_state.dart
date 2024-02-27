// ignore_for_file: must_be_immutable

part of 'seventy_bloc.dart';

/// Represents the state of Seventy in the application.
class SeventyState extends Equatable {
  SeventyState({
    this.searchController,
    this.seventyModelObj,
  });

  TextEditingController? searchController;

  SeventyModel? seventyModelObj;

  @override
  List<Object?> get props => [
        searchController,
        seventyModelObj,
      ];

  SeventyState copyWith({
    TextEditingController? searchController,
    SeventyModel? seventyModelObj,
  }) {
    return SeventyState(
      searchController: searchController ?? this.searchController,
      seventyModelObj: seventyModelObj ?? this.seventyModelObj,
    );
  }
}
