// ignore_for_file: must_be_immutable

part of 'onehundredthirtytwo_bloc.dart';

/// Represents the state of Onehundredthirtytwo in the application.
class OnehundredthirtytwoState extends Equatable {
  OnehundredthirtytwoState({this.onehundredthirtytwoModelObj});

  OnehundredthirtytwoModel? onehundredthirtytwoModelObj;

  @override
  List<Object?> get props => [
        onehundredthirtytwoModelObj,
      ];

  OnehundredthirtytwoState copyWith(
      {OnehundredthirtytwoModel? onehundredthirtytwoModelObj}) {
    return OnehundredthirtytwoState(
      onehundredthirtytwoModelObj:
          onehundredthirtytwoModelObj ?? this.onehundredthirtytwoModelObj,
    );
  }
}
