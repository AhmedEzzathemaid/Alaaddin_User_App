// ignore_for_file: must_be_immutable

part of 'eleven_bloc.dart';

/// Represents the state of Eleven in the application.
class ElevenState extends Equatable {
  ElevenState({
    this.searchController,
    this.nameController,
    this.stController,
    this.sixteenController,
    this.frontofMcDonaldsController,
    this.phoneNumberController,
    this.phoneNumberController1,
    this.selectedDropDownValue,
    this.selectedDropDownValue1,
    this.selectedDropDownValue2,
    this.selectedCountry,
    this.selectedCountry1,
    this.elevenModelObj,
  });

  TextEditingController? searchController;

  TextEditingController? nameController;

  TextEditingController? stController;

  TextEditingController? sixteenController;

  TextEditingController? frontofMcDonaldsController;

  TextEditingController? phoneNumberController;

  TextEditingController? phoneNumberController1;

  SelectionPopupModel? selectedDropDownValue;

  SelectionPopupModel? selectedDropDownValue1;

  SelectionPopupModel? selectedDropDownValue2;

  ElevenModel? elevenModelObj;

  Country? selectedCountry;

  Country? selectedCountry1;

  @override
  List<Object?> get props => [
        searchController,
        nameController,
        stController,
        sixteenController,
        frontofMcDonaldsController,
        phoneNumberController,
        phoneNumberController1,
        selectedDropDownValue,
        selectedDropDownValue1,
        selectedDropDownValue2,
        selectedCountry,
        selectedCountry1,
        elevenModelObj,
      ];

  ElevenState copyWith({
    TextEditingController? searchController,
    TextEditingController? nameController,
    TextEditingController? stController,
    TextEditingController? sixteenController,
    TextEditingController? frontofMcDonaldsController,
    TextEditingController? phoneNumberController,
    TextEditingController? phoneNumberController1,
    SelectionPopupModel? selectedDropDownValue,
    SelectionPopupModel? selectedDropDownValue1,
    SelectionPopupModel? selectedDropDownValue2,
    Country? selectedCountry,
    Country? selectedCountry1,
    ElevenModel? elevenModelObj,
  }) {
    return ElevenState(
      searchController: searchController ?? this.searchController,
      nameController: nameController ?? this.nameController,
      stController: stController ?? this.stController,
      sixteenController: sixteenController ?? this.sixteenController,
      frontofMcDonaldsController:
          frontofMcDonaldsController ?? this.frontofMcDonaldsController,
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
      elevenModelObj: elevenModelObj ?? this.elevenModelObj,
    );
  }
}
