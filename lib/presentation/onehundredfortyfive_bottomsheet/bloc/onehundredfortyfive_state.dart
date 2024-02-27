// ignore_for_file: must_be_immutable

part of 'onehundredfortyfive_bloc.dart';

/// Represents the state of Onehundredfortyfive in the application.
class OnehundredfortyfiveState extends Equatable {
  OnehundredfortyfiveState({this.onehundredfortyfiveModelObj});

  OnehundredfortyfiveModel? onehundredfortyfiveModelObj;

  @override
  List<Object?> get props => [
        onehundredfortyfiveModelObj,
      ];

  OnehundredfortyfiveState copyWith(
      {OnehundredfortyfiveModel? onehundredfortyfiveModelObj}) {
    return OnehundredfortyfiveState(
      onehundredfortyfiveModelObj:
          onehundredfortyfiveModelObj ?? this.onehundredfortyfiveModelObj,
    );
  }
}
