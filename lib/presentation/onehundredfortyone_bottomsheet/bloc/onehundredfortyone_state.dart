// ignore_for_file: must_be_immutable

part of 'onehundredfortyone_bloc.dart';

/// Represents the state of Onehundredfortyone in the application.
class OnehundredfortyoneState extends Equatable {
  OnehundredfortyoneState({this.onehundredfortyoneModelObj});

  OnehundredfortyoneModel? onehundredfortyoneModelObj;

  @override
  List<Object?> get props => [
        onehundredfortyoneModelObj,
      ];

  OnehundredfortyoneState copyWith(
      {OnehundredfortyoneModel? onehundredfortyoneModelObj}) {
    return OnehundredfortyoneState(
      onehundredfortyoneModelObj:
          onehundredfortyoneModelObj ?? this.onehundredfortyoneModelObj,
    );
  }
}
