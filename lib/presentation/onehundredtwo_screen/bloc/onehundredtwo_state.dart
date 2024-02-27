// ignore_for_file: must_be_immutable

part of 'onehundredtwo_bloc.dart';

/// Represents the state of Onehundredtwo in the application.
class OnehundredtwoState extends Equatable {
  OnehundredtwoState({this.onehundredtwoModelObj});

  OnehundredtwoModel? onehundredtwoModelObj;

  @override
  List<Object?> get props => [
        onehundredtwoModelObj,
      ];

  OnehundredtwoState copyWith({OnehundredtwoModel? onehundredtwoModelObj}) {
    return OnehundredtwoState(
      onehundredtwoModelObj:
          onehundredtwoModelObj ?? this.onehundredtwoModelObj,
    );
  }
}
