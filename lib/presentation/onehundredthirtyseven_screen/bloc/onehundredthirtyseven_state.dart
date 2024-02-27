// ignore_for_file: must_be_immutable

part of 'onehundredthirtyseven_bloc.dart';

/// Represents the state of Onehundredthirtyseven in the application.
class OnehundredthirtysevenState extends Equatable {
  OnehundredthirtysevenState({this.onehundredthirtysevenModelObj});

  OnehundredthirtysevenModel? onehundredthirtysevenModelObj;

  @override
  List<Object?> get props => [
        onehundredthirtysevenModelObj,
      ];

  OnehundredthirtysevenState copyWith(
      {OnehundredthirtysevenModel? onehundredthirtysevenModelObj}) {
    return OnehundredthirtysevenState(
      onehundredthirtysevenModelObj:
          onehundredthirtysevenModelObj ?? this.onehundredthirtysevenModelObj,
    );
  }
}
