// ignore_for_file: must_be_immutable

part of 'onehundredtwentynine_tab_container_bloc.dart';

/// Represents the state of OnehundredtwentynineTabContainer in the application.
class OnehundredtwentynineTabContainerState extends Equatable {
  OnehundredtwentynineTabContainerState(
      {this.onehundredtwentynineTabContainerModelObj});

  OnehundredtwentynineTabContainerModel?
      onehundredtwentynineTabContainerModelObj;

  @override
  List<Object?> get props => [
        onehundredtwentynineTabContainerModelObj,
      ];

  OnehundredtwentynineTabContainerState copyWith(
      {OnehundredtwentynineTabContainerModel?
          onehundredtwentynineTabContainerModelObj}) {
    return OnehundredtwentynineTabContainerState(
      onehundredtwentynineTabContainerModelObj:
          onehundredtwentynineTabContainerModelObj ??
              this.onehundredtwentynineTabContainerModelObj,
    );
  }
}
