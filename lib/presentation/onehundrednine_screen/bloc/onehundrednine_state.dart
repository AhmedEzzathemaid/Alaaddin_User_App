// ignore_for_file: must_be_immutable

part of 'onehundrednine_bloc.dart';

/// Represents the state of Onehundrednine in the application.
class OnehundrednineState extends Equatable {
  OnehundrednineState({this.onehundrednineModelObj});

  OnehundrednineModel? onehundrednineModelObj;

  @override
  List<Object?> get props => [
        onehundrednineModelObj,
      ];

  OnehundrednineState copyWith({OnehundrednineModel? onehundrednineModelObj}) {
    return OnehundrednineState(
      onehundrednineModelObj:
          onehundrednineModelObj ?? this.onehundrednineModelObj,
    );
  }
}
