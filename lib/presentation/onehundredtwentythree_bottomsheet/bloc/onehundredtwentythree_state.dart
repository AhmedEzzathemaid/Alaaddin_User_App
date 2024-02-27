// ignore_for_file: must_be_immutable

part of 'onehundredtwentythree_bloc.dart';

/// Represents the state of Onehundredtwentythree in the application.
class OnehundredtwentythreeState extends Equatable {
  OnehundredtwentythreeState({this.onehundredtwentythreeModelObj});

  OnehundredtwentythreeModel? onehundredtwentythreeModelObj;

  @override
  List<Object?> get props => [
        onehundredtwentythreeModelObj,
      ];

  OnehundredtwentythreeState copyWith(
      {OnehundredtwentythreeModel? onehundredtwentythreeModelObj}) {
    return OnehundredtwentythreeState(
      onehundredtwentythreeModelObj:
          onehundredtwentythreeModelObj ?? this.onehundredtwentythreeModelObj,
    );
  }
}
