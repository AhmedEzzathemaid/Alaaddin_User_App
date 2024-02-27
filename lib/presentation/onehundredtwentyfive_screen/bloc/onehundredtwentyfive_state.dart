// ignore_for_file: must_be_immutable

part of 'onehundredtwentyfive_bloc.dart';

/// Represents the state of Onehundredtwentyfive in the application.
class OnehundredtwentyfiveState extends Equatable {
  OnehundredtwentyfiveState({this.onehundredtwentyfiveModelObj});

  OnehundredtwentyfiveModel? onehundredtwentyfiveModelObj;

  @override
  List<Object?> get props => [
        onehundredtwentyfiveModelObj,
      ];

  OnehundredtwentyfiveState copyWith(
      {OnehundredtwentyfiveModel? onehundredtwentyfiveModelObj}) {
    return OnehundredtwentyfiveState(
      onehundredtwentyfiveModelObj:
          onehundredtwentyfiveModelObj ?? this.onehundredtwentyfiveModelObj,
    );
  }
}
