// ignore_for_file: must_be_immutable

part of 'sixtyone_tab_container_bloc.dart';

/// Represents the state of SixtyoneTabContainer in the application.
class SixtyoneTabContainerState extends Equatable {
  SixtyoneTabContainerState({this.sixtyoneTabContainerModelObj});

  SixtyoneTabContainerModel? sixtyoneTabContainerModelObj;

  @override
  List<Object?> get props => [
        sixtyoneTabContainerModelObj,
      ];

  SixtyoneTabContainerState copyWith(
      {SixtyoneTabContainerModel? sixtyoneTabContainerModelObj}) {
    return SixtyoneTabContainerState(
      sixtyoneTabContainerModelObj:
          sixtyoneTabContainerModelObj ?? this.sixtyoneTabContainerModelObj,
    );
  }
}
