// ignore_for_file: must_be_immutable

part of 'nineteen_tab_container_bloc.dart';

/// Represents the state of NineteenTabContainer in the application.
class NineteenTabContainerState extends Equatable {
  NineteenTabContainerState({
    this.searchController,
    this.nineteenTabContainerModelObj,
  });

  TextEditingController? searchController;

  NineteenTabContainerModel? nineteenTabContainerModelObj;

  @override
  List<Object?> get props => [
        searchController,
        nineteenTabContainerModelObj,
      ];

  NineteenTabContainerState copyWith({
    TextEditingController? searchController,
    NineteenTabContainerModel? nineteenTabContainerModelObj,
  }) {
    return NineteenTabContainerState(
      searchController: searchController ?? this.searchController,
      nineteenTabContainerModelObj:
          nineteenTabContainerModelObj ?? this.nineteenTabContainerModelObj,
    );
  }
}
