// ignore_for_file: must_be_immutable

part of 'onehundredsixtyone_bloc.dart';

/// Represents the state of Onehundredsixtyone in the application.
class OnehundredsixtyoneState extends Equatable {
  OnehundredsixtyoneState({
    this.passwordController,
    this.confirmpasswordController,
    this.isShowPassword = true,
    this.isShowPassword1 = true,
    this.onehundredsixtyoneModelObj,
  });

  TextEditingController? passwordController;

  TextEditingController? confirmpasswordController;

  OnehundredsixtyoneModel? onehundredsixtyoneModelObj;

  bool isShowPassword;

  bool isShowPassword1;

  @override
  List<Object?> get props => [
        passwordController,
        confirmpasswordController,
        isShowPassword,
        isShowPassword1,
        onehundredsixtyoneModelObj,
      ];

  OnehundredsixtyoneState copyWith({
    TextEditingController? passwordController,
    TextEditingController? confirmpasswordController,
    bool? isShowPassword,
    bool? isShowPassword1,
    OnehundredsixtyoneModel? onehundredsixtyoneModelObj,
  }) {
    return OnehundredsixtyoneState(
      passwordController: passwordController ?? this.passwordController,
      confirmpasswordController:
          confirmpasswordController ?? this.confirmpasswordController,
      isShowPassword: isShowPassword ?? this.isShowPassword,
      isShowPassword1: isShowPassword1 ?? this.isShowPassword1,
      onehundredsixtyoneModelObj:
          onehundredsixtyoneModelObj ?? this.onehundredsixtyoneModelObj,
    );
  }
}
