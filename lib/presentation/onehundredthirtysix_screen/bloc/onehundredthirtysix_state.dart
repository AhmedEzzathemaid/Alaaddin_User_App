// ignore_for_file: must_be_immutable

part of 'onehundredthirtysix_bloc.dart';

/// Represents the state of Onehundredthirtysix in the application.
class OnehundredthirtysixState extends Equatable {
  OnehundredthirtysixState({this.onehundredthirtysixModelObj});

  OnehundredthirtysixModel? onehundredthirtysixModelObj;

  @override
  List<Object?> get props => [
        onehundredthirtysixModelObj,
      ];

  OnehundredthirtysixState copyWith(
      {OnehundredthirtysixModel? onehundredthirtysixModelObj}) {
    return OnehundredthirtysixState(
      onehundredthirtysixModelObj:
          onehundredthirtysixModelObj ?? this.onehundredthirtysixModelObj,
    );
  }
}
