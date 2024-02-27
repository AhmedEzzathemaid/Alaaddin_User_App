// ignore_for_file: must_be_immutable

part of 'five_bloc.dart';

/// Represents the state of Five in the application.
class FiveState extends Equatable {
  FiveState({
    this.searchController,
    this.nameController,
    this.stvalueController,
    this.valueController,
    this.frontOfMcDonaldsController,
    this.phoneNumberController,
    this.phoneNumberController1,
    this.selectedDropDownValue,
    this.selectedDropDownValue1,
    this.selectedDropDownValue2,
    this.selectedCountry,
    this.selectedCountry1,
    this.fiveModelObj,
  });

  TextEditingController? searchController;

  TextEditingController? nameController;

  TextEditingController? stvalueController;

  TextEditingController? valueController;

  TextEditingController? frontOfMcDonaldsController;

  TextEditingController? phoneNumberController;

  TextEditingController? phoneNumberController1;

  SelectionPopupModel? selectedDropDownValue;

  SelectionPopupModel? selectedDropDownValue1;

  SelectionPopupModel? selectedDropDownValue2;

  FiveModel? fiveModelObj;

  Country? selectedCountry;

  Country? selectedCountry1;

  @override
  List<Object?> get props => [
        searchController,
        nameController,
        stvalueController,
        valueController,
        frontOfMcDonaldsController,
        phoneNumberController,
        phoneNumberController1,
        selectedDropDownValue,
        selectedDropDownValue1,
        selectedDropDownValue2,
        selectedCountry,
        selectedCountry1,
        fiveModelObj,
      ];

  FiveState copyWith({
    TextEditingController? searchController,
    TextEditingController? nameController,
    TextEditingController? stvalueController,
    TextEditingController? valueController,
    TextEditingController? frontOfMcDonaldsController,
    TextEditingController? phoneNumberController,
    TextEditingController? phoneNumberController1,
    SelectionPopupModel? selectedDropDownValue,
    SelectionPopupModel? selectedDropDownValue1,
    SelectionPopupModel? selectedDropDownValue2,
    Country? selectedCountry,
    Country? selectedCountry1,
    FiveModel? fiveModelObj,
  }) {
    return FiveState(
      searchController: searchController ?? this.searchController,
      nameController: nameController ?? this.nameController,
      stvalueController: stvalueController ?? this.stvalueController,
      valueController: valueController ?? this.valueController,
      frontOfMcDonaldsController:
          frontOfMcDonaldsController ?? this.frontOfMcDonaldsController,
      phoneNumberController:
          phoneNumberController ?? this.phoneNumberController,
      phoneNumberController1:
          phoneNumberController1 ?? this.phoneNumberController1,
      selectedDropDownValue:
          selectedDropDownValue ?? this.selectedDropDownValue,
      selectedDropDownValue1:
          selectedDropDownValue1 ?? this.selectedDropDownValue1,
      selectedDropDownValue2:
          selectedDropDownValue2 ?? this.selectedDropDownValue2,
      selectedCountry: selectedCountry ?? this.selectedCountry,
      selectedCountry1: selectedCountry1 ?? this.selectedCountry1,
      fiveModelObj: fiveModelObj ?? this.fiveModelObj,
    );
  }
}
