// ignore_for_file: must_be_immutable

part of 'onehundredfortynine_bloc.dart';

/// Represents the state of Onehundredfortynine in the application.
class OnehundredfortynineState extends Equatable {
  OnehundredfortynineState({
    this.nameController,
    this.phoneNumberController,
    this.emailController,
    this.writeherevalueController,
    this.selectedCountry,
    this.onehundredfortynineModelObj,
  });

  TextEditingController? nameController;

  TextEditingController? phoneNumberController;

  TextEditingController? emailController;

  TextEditingController? writeherevalueController;

  OnehundredfortynineModel? onehundredfortynineModelObj;

  Country? selectedCountry;

  @override
  List<Object?> get props => [
        nameController,
        phoneNumberController,
        emailController,
        writeherevalueController,
        selectedCountry,
        onehundredfortynineModelObj,
      ];

  OnehundredfortynineState copyWith({
    TextEditingController? nameController,
    TextEditingController? phoneNumberController,
    TextEditingController? emailController,
    TextEditingController? writeherevalueController,
    Country? selectedCountry,
    OnehundredfortynineModel? onehundredfortynineModelObj,
  }) {
    return OnehundredfortynineState(
      nameController: nameController ?? this.nameController,
      phoneNumberController:
          phoneNumberController ?? this.phoneNumberController,
      emailController: emailController ?? this.emailController,
      writeherevalueController:
          writeherevalueController ?? this.writeherevalueController,
      selectedCountry: selectedCountry ?? this.selectedCountry,
      onehundredfortynineModelObj:
          onehundredfortynineModelObj ?? this.onehundredfortynineModelObj,
    );
  }
}
