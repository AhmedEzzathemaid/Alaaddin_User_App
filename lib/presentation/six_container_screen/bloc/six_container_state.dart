// ignore_for_file: must_be_immutable

part of 'six_container_bloc.dart';

/// Represents the state of SixContainer in the application.
class SixContainerState extends Equatable {
  SixContainerState({this.sixContainerModelObj});

  SixContainerModel? sixContainerModelObj;

  @override
  List<Object?> get props => [
        sixContainerModelObj,
      ];

  SixContainerState copyWith({SixContainerModel? sixContainerModelObj}) {
    return SixContainerState(
      sixContainerModelObj: sixContainerModelObj ?? this.sixContainerModelObj,
    );
  }
}
