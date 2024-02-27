// ignore_for_file: must_be_immutable

part of 'onehundredthirtythree_bloc.dart';

/// Represents the state of Onehundredthirtythree in the application.
class OnehundredthirtythreeState extends Equatable {
  OnehundredthirtythreeState({this.onehundredthirtythreeModelObj});

  OnehundredthirtythreeModel? onehundredthirtythreeModelObj;

  @override
  List<Object?> get props => [
        onehundredthirtythreeModelObj,
      ];

  OnehundredthirtythreeState copyWith(
      {OnehundredthirtythreeModel? onehundredthirtythreeModelObj}) {
    return OnehundredthirtythreeState(
      onehundredthirtythreeModelObj:
          onehundredthirtythreeModelObj ?? this.onehundredthirtythreeModelObj,
    );
  }
}
