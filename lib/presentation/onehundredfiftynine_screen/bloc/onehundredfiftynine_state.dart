// ignore_for_file: must_be_immutable

part of 'onehundredfiftynine_bloc.dart';

/// Represents the state of Onehundredfiftynine in the application.
class OnehundredfiftynineState extends Equatable {
  OnehundredfiftynineState({
    this.phoneNumberController,
    this.selectedCountry,
    this.onehundredfiftynineModelObj,
  });

  TextEditingController? phoneNumberController;

  OnehundredfiftynineModel? onehundredfiftynineModelObj;

  Country? selectedCountry;

  @override
  List<Object?> get props => [
        phoneNumberController,
        selectedCountry,
        onehundredfiftynineModelObj,
      ];

  OnehundredfiftynineState copyWith({
    TextEditingController? phoneNumberController,
    Country? selectedCountry,
    OnehundredfiftynineModel? onehundredfiftynineModelObj,
  }) {
    return OnehundredfiftynineState(
      phoneNumberController:
          phoneNumberController ?? this.phoneNumberController,
      selectedCountry: selectedCountry ?? this.selectedCountry,
      onehundredfiftynineModelObj:
          onehundredfiftynineModelObj ?? this.onehundredfiftynineModelObj,
    );
  }
}
