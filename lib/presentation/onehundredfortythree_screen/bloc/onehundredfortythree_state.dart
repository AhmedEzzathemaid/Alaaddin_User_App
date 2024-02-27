// ignore_for_file: must_be_immutable

part of 'onehundredfortythree_bloc.dart';

/// Represents the state of Onehundredfortythree in the application.
class OnehundredfortythreeState extends Equatable {
  OnehundredfortythreeState({this.onehundredfortythreeModelObj});

  OnehundredfortythreeModel? onehundredfortythreeModelObj;

  @override
  List<Object?> get props => [
        onehundredfortythreeModelObj,
      ];

  OnehundredfortythreeState copyWith(
      {OnehundredfortythreeModel? onehundredfortythreeModelObj}) {
    return OnehundredfortythreeState(
      onehundredfortythreeModelObj:
          onehundredfortythreeModelObj ?? this.onehundredfortythreeModelObj,
    );
  }
}
