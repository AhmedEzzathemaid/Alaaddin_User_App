// ignore_for_file: must_be_immutable

part of 'onehundredforty_bloc.dart';

/// Represents the state of Onehundredforty in the application.
class OnehundredfortyState extends Equatable {
  OnehundredfortyState({this.onehundredfortyModelObj});

  OnehundredfortyModel? onehundredfortyModelObj;

  @override
  List<Object?> get props => [
        onehundredfortyModelObj,
      ];

  OnehundredfortyState copyWith(
      {OnehundredfortyModel? onehundredfortyModelObj}) {
    return OnehundredfortyState(
      onehundredfortyModelObj:
          onehundredfortyModelObj ?? this.onehundredfortyModelObj,
    );
  }
}
