// ignore_for_file: must_be_immutable

part of 'seventythree_bloc.dart';

/// Represents the state of Seventythree in the application.
class SeventythreeState extends Equatable {
  SeventythreeState({
    this.fullNameController,
    this.phoneNumberController,
    this.group239Controller,
    this.selectedCountry,
    this.seventythreeModelObj,
  });

  TextEditingController? fullNameController;

  TextEditingController? phoneNumberController;

  TextEditingController? group239Controller;

  SeventythreeModel? seventythreeModelObj;

  Country? selectedCountry;

  @override
  List<Object?> get props => [
        fullNameController,
        phoneNumberController,
        group239Controller,
        selectedCountry,
        seventythreeModelObj,
      ];

  SeventythreeState copyWith({
    TextEditingController? fullNameController,
    TextEditingController? phoneNumberController,
    TextEditingController? group239Controller,
    Country? selectedCountry,
    SeventythreeModel? seventythreeModelObj,
  }) {
    return SeventythreeState(
      fullNameController: fullNameController ?? this.fullNameController,
      phoneNumberController:
          phoneNumberController ?? this.phoneNumberController,
      group239Controller: group239Controller ?? this.group239Controller,
      selectedCountry: selectedCountry ?? this.selectedCountry,
      seventythreeModelObj: seventythreeModelObj ?? this.seventythreeModelObj,
    );
  }
}
