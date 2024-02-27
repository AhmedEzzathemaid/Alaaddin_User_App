// ignore_for_file: must_be_immutable

part of 'onehundred_bloc.dart';

/// Represents the state of Onehundred in the application.
class OnehundredState extends Equatable {
  OnehundredState({
    this.paymentmethodvalueController,
    this.onehundredModelObj,
  });

  TextEditingController? paymentmethodvalueController;

  OnehundredModel? onehundredModelObj;

  @override
  List<Object?> get props => [
        paymentmethodvalueController,
        onehundredModelObj,
      ];

  OnehundredState copyWith({
    TextEditingController? paymentmethodvalueController,
    OnehundredModel? onehundredModelObj,
  }) {
    return OnehundredState(
      paymentmethodvalueController:
          paymentmethodvalueController ?? this.paymentmethodvalueController,
      onehundredModelObj: onehundredModelObj ?? this.onehundredModelObj,
    );
  }
}
