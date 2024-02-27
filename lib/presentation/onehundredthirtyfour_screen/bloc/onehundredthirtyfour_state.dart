// ignore_for_file: must_be_immutable

part of 'onehundredthirtyfour_bloc.dart';

/// Represents the state of Onehundredthirtyfour in the application.
class OnehundredthirtyfourState extends Equatable {
  OnehundredthirtyfourState({
    this.passwordController,
    this.newpasswordController,
    this.confirmpasswordController,
    this.isShowPassword = true,
    this.isShowPassword1 = true,
    this.isShowPassword2 = true,
    this.onehundredthirtyfourModelObj,
  });

  TextEditingController? passwordController;

  TextEditingController? newpasswordController;

  TextEditingController? confirmpasswordController;

  OnehundredthirtyfourModel? onehundredthirtyfourModelObj;

  bool isShowPassword;

  bool isShowPassword1;

  bool isShowPassword2;

  @override
  List<Object?> get props => [
        passwordController,
        newpasswordController,
        confirmpasswordController,
        isShowPassword,
        isShowPassword1,
        isShowPassword2,
        onehundredthirtyfourModelObj,
      ];

  OnehundredthirtyfourState copyWith({
    TextEditingController? passwordController,
    TextEditingController? newpasswordController,
    TextEditingController? confirmpasswordController,
    bool? isShowPassword,
    bool? isShowPassword1,
    bool? isShowPassword2,
    OnehundredthirtyfourModel? onehundredthirtyfourModelObj,
  }) {
    return OnehundredthirtyfourState(
      passwordController: passwordController ?? this.passwordController,
      newpasswordController:
          newpasswordController ?? this.newpasswordController,
      confirmpasswordController:
          confirmpasswordController ?? this.confirmpasswordController,
      isShowPassword: isShowPassword ?? this.isShowPassword,
      isShowPassword1: isShowPassword1 ?? this.isShowPassword1,
      isShowPassword2: isShowPassword2 ?? this.isShowPassword2,
      onehundredthirtyfourModelObj:
          onehundredthirtyfourModelObj ?? this.onehundredthirtyfourModelObj,
    );
  }
}
