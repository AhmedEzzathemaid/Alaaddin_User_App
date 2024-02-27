// ignore_for_file: must_be_immutable

part of 'onehundredthirtyfive_bloc.dart';

/// Represents the state of Onehundredthirtyfive in the application.
class OnehundredthirtyfiveState extends Equatable {
  OnehundredthirtyfiveState({this.onehundredthirtyfiveModelObj});

  OnehundredthirtyfiveModel? onehundredthirtyfiveModelObj;

  @override
  List<Object?> get props => [
        onehundredthirtyfiveModelObj,
      ];

  OnehundredthirtyfiveState copyWith(
      {OnehundredthirtyfiveModel? onehundredthirtyfiveModelObj}) {
    return OnehundredthirtyfiveState(
      onehundredthirtyfiveModelObj:
          onehundredthirtyfiveModelObj ?? this.onehundredthirtyfiveModelObj,
    );
  }
}
