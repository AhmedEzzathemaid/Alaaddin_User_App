// ignore_for_file: must_be_immutable

part of 'onehundredone_bloc.dart';

/// Represents the state of Onehundredone in the application.
class OnehundredoneState extends Equatable {
  OnehundredoneState({this.onehundredoneModelObj});

  OnehundredoneModel? onehundredoneModelObj;

  @override
  List<Object?> get props => [
        onehundredoneModelObj,
      ];

  OnehundredoneState copyWith({OnehundredoneModel? onehundredoneModelObj}) {
    return OnehundredoneState(
      onehundredoneModelObj:
          onehundredoneModelObj ?? this.onehundredoneModelObj,
    );
  }
}
