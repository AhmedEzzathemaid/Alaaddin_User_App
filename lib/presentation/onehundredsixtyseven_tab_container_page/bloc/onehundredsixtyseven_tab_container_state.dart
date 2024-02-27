// ignore_for_file: must_be_immutable

part of 'onehundredsixtyseven_tab_container_bloc.dart';

/// Represents the state of OnehundredsixtysevenTabContainer in the application.
class OnehundredsixtysevenTabContainerState extends Equatable {
  OnehundredsixtysevenTabContainerState(
      {this.onehundredsixtysevenTabContainerModelObj});

  OnehundredsixtysevenTabContainerModel?
      onehundredsixtysevenTabContainerModelObj;

  @override
  List<Object?> get props => [
        onehundredsixtysevenTabContainerModelObj,
      ];

  OnehundredsixtysevenTabContainerState copyWith(
      {OnehundredsixtysevenTabContainerModel?
          onehundredsixtysevenTabContainerModelObj}) {
    return OnehundredsixtysevenTabContainerState(
      onehundredsixtysevenTabContainerModelObj:
          onehundredsixtysevenTabContainerModelObj ??
              this.onehundredsixtysevenTabContainerModelObj,
    );
  }
}
