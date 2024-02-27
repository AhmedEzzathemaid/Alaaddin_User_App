// ignore_for_file: must_be_immutable

part of 'seventythree_tab_container_bloc.dart';

/// Represents the state of SeventythreeTabContainer in the application.
class SeventythreeTabContainerState extends Equatable {
  SeventythreeTabContainerState({this.seventythreeTabContainerModelObj});

  SeventythreeTabContainerModel? seventythreeTabContainerModelObj;

  @override
  List<Object?> get props => [
        seventythreeTabContainerModelObj,
      ];

  SeventythreeTabContainerState copyWith(
      {SeventythreeTabContainerModel? seventythreeTabContainerModelObj}) {
    return SeventythreeTabContainerState(
      seventythreeTabContainerModelObj: seventythreeTabContainerModelObj ??
          this.seventythreeTabContainerModelObj,
    );
  }
}
