// ignore_for_file: must_be_immutable

part of 'onehundredfiftyeight_bloc.dart';

/// Represents the state of Onehundredfiftyeight in the application.
class OnehundredfiftyeightState extends Equatable {
  OnehundredfiftyeightState({
    this.phoneNumberController,
    this.passwordController,
    this.selectedCountry,
    this.isShowPassword = true,
    this.rememberMe = false,
    this.onehundredfiftyeightModelObj,
  });

  TextEditingController? phoneNumberController;

  TextEditingController? passwordController;

  OnehundredfiftyeightModel? onehundredfiftyeightModelObj;

  Country? selectedCountry;

  bool isShowPassword;

  bool rememberMe;

  @override
  List<Object?> get props => [
        phoneNumberController,
        passwordController,
        selectedCountry,
        isShowPassword,
        rememberMe,
        onehundredfiftyeightModelObj,
      ];

  OnehundredfiftyeightState copyWith({
    TextEditingController? phoneNumberController,
    TextEditingController? passwordController,
    Country? selectedCountry,
    bool? isShowPassword,
    bool? rememberMe,
    OnehundredfiftyeightModel? onehundredfiftyeightModelObj,
  }) {
    return OnehundredfiftyeightState(
      phoneNumberController:
          phoneNumberController ?? this.phoneNumberController,
      passwordController: passwordController ?? this.passwordController,
      selectedCountry: selectedCountry ?? this.selectedCountry,
      isShowPassword: isShowPassword ?? this.isShowPassword,
      rememberMe: rememberMe ?? this.rememberMe,
      onehundredfiftyeightModelObj:
          onehundredfiftyeightModelObj ?? this.onehundredfiftyeightModelObj,
    );
  }
}
