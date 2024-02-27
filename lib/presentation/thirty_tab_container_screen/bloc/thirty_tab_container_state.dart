// ignore_for_file: must_be_immutable

part of 'thirty_tab_container_bloc.dart';

/// Represents the state of ThirtyTabContainer in the application.
class ThirtyTabContainerState extends Equatable {
  ThirtyTabContainerState({
    this.searchController,
    this.thirtyTabContainerModelObj,
  });

  TextEditingController? searchController;

  ThirtyTabContainerModel? thirtyTabContainerModelObj;

  @override
  List<Object?> get props => [
        searchController,
        thirtyTabContainerModelObj,
      ];

  ThirtyTabContainerState copyWith({
    TextEditingController? searchController,
    ThirtyTabContainerModel? thirtyTabContainerModelObj,
  }) {
    return ThirtyTabContainerState(
      searchController: searchController ?? this.searchController,
      thirtyTabContainerModelObj:
          thirtyTabContainerModelObj ?? this.thirtyTabContainerModelObj,
    );
  }
}
