// ignore_for_file: must_be_immutable

part of 'onehundredsixtyfive_bloc.dart';

/// Represents the state of Onehundredsixtyfive in the application.
class OnehundredsixtyfiveState extends Equatable {
  OnehundredsixtyfiveState({this.onehundredsixtyfiveModelObj});

  OnehundredsixtyfiveModel? onehundredsixtyfiveModelObj;

  @override
  List<Object?> get props => [
        onehundredsixtyfiveModelObj,
      ];

  OnehundredsixtyfiveState copyWith(
      {OnehundredsixtyfiveModel? onehundredsixtyfiveModelObj}) {
    return OnehundredsixtyfiveState(
      onehundredsixtyfiveModelObj:
          onehundredsixtyfiveModelObj ?? this.onehundredsixtyfiveModelObj,
    );
  }
}
