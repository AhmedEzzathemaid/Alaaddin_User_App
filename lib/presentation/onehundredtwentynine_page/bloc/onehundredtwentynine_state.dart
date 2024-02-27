// ignore_for_file: must_be_immutable

part of 'onehundredtwentynine_bloc.dart';

/// Represents the state of Onehundredtwentynine in the application.
class OnehundredtwentynineState extends Equatable {
  OnehundredtwentynineState({
    this.nameController,
    this.phoneNumberController,
    this.selectedDropDownValue,
    this.selectedDropDownValue1,
    this.selectedDropDownValue2,
    this.selectedDropDownValue3,
    this.selectedCountry,
    this.onehundredtwentynineModelObj,
  });

  TextEditingController? nameController;

  TextEditingController? phoneNumberController;

  SelectionPopupModel? selectedDropDownValue;

  SelectionPopupModel? selectedDropDownValue1;

  SelectionPopupModel? selectedDropDownValue2;

  SelectionPopupModel? selectedDropDownValue3;

  OnehundredtwentynineModel? onehundredtwentynineModelObj;

  Country? selectedCountry;

  @override
  List<Object?> get props => [
        nameController,
        phoneNumberController,
        selectedDropDownValue,
        selectedDropDownValue1,
        selectedDropDownValue2,
        selectedDropDownValue3,
        selectedCountry,
        onehundredtwentynineModelObj,
      ];

  OnehundredtwentynineState copyWith({
    TextEditingController? nameController,
    TextEditingController? phoneNumberController,
    SelectionPopupModel? selectedDropDownValue,
    SelectionPopupModel? selectedDropDownValue1,
    SelectionPopupModel? selectedDropDownValue2,
    SelectionPopupModel? selectedDropDownValue3,
    Country? selectedCountry,
    OnehundredtwentynineModel? onehundredtwentynineModelObj,
  }) {
    return OnehundredtwentynineState(
      nameController: nameController ?? this.nameController,
      phoneNumberController:
          phoneNumberController ?? this.phoneNumberController,
      selectedDropDownValue:
          selectedDropDownValue ?? this.selectedDropDownValue,
      selectedDropDownValue1:
          selectedDropDownValue1 ?? this.selectedDropDownValue1,
      selectedDropDownValue2:
          selectedDropDownValue2 ?? this.selectedDropDownValue2,
      selectedDropDownValue3:
          selectedDropDownValue3 ?? this.selectedDropDownValue3,
      selectedCountry: selectedCountry ?? this.selectedCountry,
      onehundredtwentynineModelObj:
          onehundredtwentynineModelObj ?? this.onehundredtwentynineModelObj,
    );
  }
}
