// ignore_for_file: must_be_immutable

part of 'onehundredtwelve_bloc.dart';

/// Represents the state of Onehundredtwelve in the application.
class OnehundredtwelveState extends Equatable {
  OnehundredtwelveState({this.onehundredtwelveModelObj});

  OnehundredtwelveModel? onehundredtwelveModelObj;

  @override
  List<Object?> get props => [
        onehundredtwelveModelObj,
      ];

  OnehundredtwelveState copyWith(
      {OnehundredtwelveModel? onehundredtwelveModelObj}) {
    return OnehundredtwelveState(
      onehundredtwelveModelObj:
          onehundredtwelveModelObj ?? this.onehundredtwelveModelObj,
    );
  }
}
