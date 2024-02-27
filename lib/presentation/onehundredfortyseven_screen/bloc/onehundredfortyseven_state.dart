// ignore_for_file: must_be_immutable

part of 'onehundredfortyseven_bloc.dart';

/// Represents the state of Onehundredfortyseven in the application.
class OnehundredfortysevenState extends Equatable {
  OnehundredfortysevenState({this.onehundredfortysevenModelObj});

  OnehundredfortysevenModel? onehundredfortysevenModelObj;

  @override
  List<Object?> get props => [
        onehundredfortysevenModelObj,
      ];

  OnehundredfortysevenState copyWith(
      {OnehundredfortysevenModel? onehundredfortysevenModelObj}) {
    return OnehundredfortysevenState(
      onehundredfortysevenModelObj:
          onehundredfortysevenModelObj ?? this.onehundredfortysevenModelObj,
    );
  }
}
