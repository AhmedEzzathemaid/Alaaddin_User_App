// ignore_for_file: must_be_immutable

part of 'onehundredthirtynine_bloc.dart';

/// Represents the state of Onehundredthirtynine in the application.
class OnehundredthirtynineState extends Equatable {
  OnehundredthirtynineState({
    this.phoneNumberController,
    this.amountController,
    this.selectedCountry,
    this.onehundredthirtynineModelObj,
  });

  TextEditingController? phoneNumberController;

  TextEditingController? amountController;

  OnehundredthirtynineModel? onehundredthirtynineModelObj;

  Country? selectedCountry;

  @override
  List<Object?> get props => [
        phoneNumberController,
        amountController,
        selectedCountry,
        onehundredthirtynineModelObj,
      ];

  OnehundredthirtynineState copyWith({
    TextEditingController? phoneNumberController,
    TextEditingController? amountController,
    Country? selectedCountry,
    OnehundredthirtynineModel? onehundredthirtynineModelObj,
  }) {
    return OnehundredthirtynineState(
      phoneNumberController:
          phoneNumberController ?? this.phoneNumberController,
      amountController: amountController ?? this.amountController,
      selectedCountry: selectedCountry ?? this.selectedCountry,
      onehundredthirtynineModelObj:
          onehundredthirtynineModelObj ?? this.onehundredthirtynineModelObj,
    );
  }
}
