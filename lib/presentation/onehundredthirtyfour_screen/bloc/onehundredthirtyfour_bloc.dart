import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:abdelhamed_s_application9/presentation/onehundredthirtyfour_screen/models/onehundredthirtyfour_model.dart';
part 'onehundredthirtyfour_event.dart';
part 'onehundredthirtyfour_state.dart';

/// A bloc that manages the state of a Onehundredthirtyfour according to the event that is dispatched to it.
class OnehundredthirtyfourBloc
    extends Bloc<OnehundredthirtyfourEvent, OnehundredthirtyfourState> {
  OnehundredthirtyfourBloc(OnehundredthirtyfourState initialState)
      : super(initialState) {
    on<OnehundredthirtyfourInitialEvent>(_onInitialize);
    on<ChangePasswordVisibilityEvent>(_changePasswordVisibility);
    on<ChangePasswordVisibilityEvent1>(_changePasswordVisibility1);
    on<ChangePasswordVisibilityEvent2>(_changePasswordVisibility2);
  }

  _changePasswordVisibility(
    ChangePasswordVisibilityEvent event,
    Emitter<OnehundredthirtyfourState> emit,
  ) {
    emit(state.copyWith(
      isShowPassword: event.value,
    ));
  }

  _changePasswordVisibility1(
    ChangePasswordVisibilityEvent1 event,
    Emitter<OnehundredthirtyfourState> emit,
  ) {
    emit(state.copyWith(
      isShowPassword1: event.value,
    ));
  }

  _changePasswordVisibility2(
    ChangePasswordVisibilityEvent2 event,
    Emitter<OnehundredthirtyfourState> emit,
  ) {
    emit(state.copyWith(
      isShowPassword2: event.value,
    ));
  }

  _onInitialize(
    OnehundredthirtyfourInitialEvent event,
    Emitter<OnehundredthirtyfourState> emit,
  ) async {
    emit(state.copyWith(
      passwordController: TextEditingController(),
      newpasswordController: TextEditingController(),
      confirmpasswordController: TextEditingController(),
      isShowPassword: true,
      isShowPassword1: true,
      isShowPassword2: true,
    ));
  }
}
