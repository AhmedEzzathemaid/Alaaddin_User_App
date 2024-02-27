// ignore_for_file: must_be_immutable

part of 'onehundredsixtytwo_bloc.dart';

/// Represents the state of Onehundredsixtytwo in the application.
class OnehundredsixtytwoState extends Equatable {
  OnehundredsixtytwoState({
    this.nameController,
    this.phoneNumberController,
    this.passwordController,
    this.confirmpasswordController,
    this.selectedDropDownValue,
    this.selectedDropDownValue1,
    this.selectedDropDownValue2,
    this.selectedDropDownValue3,
    this.selectedCountry,
    this.isShowPassword = true,
    this.isShowPassword1 = true,
    this.checkmarksquareOne = false,
    this.onehundredsixtytwoModelObj,
  });

  TextEditingController? nameController;

  TextEditingController? phoneNumberController;

  TextEditingController? passwordController;

  TextEditingController? confirmpasswordController;

  SelectionPopupModel? selectedDropDownValue;

  SelectionPopupModel? selectedDropDownValue1;

  SelectionPopupModel? selectedDropDownValue2;

  SelectionPopupModel? selectedDropDownValue3;

  OnehundredsixtytwoModel? onehundredsixtytwoModelObj;

  Country? selectedCountry;

  bool isShowPassword;

  bool isShowPassword1;

  bool checkmarksquareOne;

  @override
  List<Object?> get props => [
        nameController,
        phoneNumberController,
        passwordController,
        confirmpasswordController,
        selectedDropDownValue,
        selectedDropDownValue1,
        selectedDropDownValue2,
        selectedDropDownValue3,
        selectedCountry,
        isShowPassword,
        isShowPassword1,
        checkmarksquareOne,
        onehundredsixtytwoModelObj,
      ];

  OnehundredsixtytwoState copyWith({
    TextEditingController? nameController,
    TextEditingController? phoneNumberController,
    TextEditingController? passwordController,
    TextEditingController? confirmpasswordController,
    SelectionPopupModel? selectedDropDownValue,
    SelectionPopupModel? selectedDropDownValue1,
    SelectionPopupModel? selectedDropDownValue2,
    SelectionPopupModel? selectedDropDownValue3,
    Country? selectedCountry,
    bool? isShowPassword,
    bool? isShowPassword1,
    bool? checkmarksquareOne,
    OnehundredsixtytwoModel? onehundredsixtytwoModelObj,
  }) {
    return OnehundredsixtytwoState(
      nameController: nameController ?? this.nameController,
      phoneNumberController:
          phoneNumberController ?? this.phoneNumberController,
      passwordController: passwordController ?? this.passwordController,
      confirmpasswordController:
          confirmpasswordController ?? this.confirmpasswordController,
      selectedDropDownValue:
          selectedDropDownValue ?? this.selectedDropDownValue,
      selectedDropDownValue1:
          selectedDropDownValue1 ?? this.selectedDropDownValue1,
      selectedDropDownValue2:
          selectedDropDownValue2 ?? this.selectedDropDownValue2,
      selectedDropDownValue3:
          selectedDropDownValue3 ?? this.selectedDropDownValue3,
      selectedCountry: selectedCountry ?? this.selectedCountry,
      isShowPassword: isShowPassword ?? this.isShowPassword,
      isShowPassword1: isShowPassword1 ?? this.isShowPassword1,
      checkmarksquareOne: checkmarksquareOne ?? this.checkmarksquareOne,
      onehundredsixtytwoModelObj:
          onehundredsixtytwoModelObj ?? this.onehundredsixtytwoModelObj,
    );
  }
}
