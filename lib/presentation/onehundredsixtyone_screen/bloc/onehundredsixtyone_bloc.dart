import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:abdelhamed_s_application9/presentation/onehundredsixtyone_screen/models/onehundredsixtyone_model.dart';
part 'onehundredsixtyone_event.dart';
part 'onehundredsixtyone_state.dart';

/// A bloc that manages the state of a Onehundredsixtyone according to the event that is dispatched to it.
class OnehundredsixtyoneBloc
    extends Bloc<OnehundredsixtyoneEvent, OnehundredsixtyoneState> {
  OnehundredsixtyoneBloc(OnehundredsixtyoneState initialState)
      : super(initialState) {
    on<OnehundredsixtyoneInitialEvent>(_onInitialize);
    on<ChangePasswordVisibilityEvent>(_changePasswordVisibility);
    on<ChangePasswordVisibilityEvent1>(_changePasswordVisibility1);
  }

  _changePasswordVisibility(
    ChangePasswordVisibilityEvent event,
    Emitter<OnehundredsixtyoneState> emit,
  ) {
    emit(state.copyWith(
      isShowPassword: event.value,
    ));
  }

  _changePasswordVisibility1(
    ChangePasswordVisibilityEvent1 event,
    Emitter<OnehundredsixtyoneState> emit,
  ) {
    emit(state.copyWith(
      isShowPassword1: event.value,
    ));
  }

  _onInitialize(
    OnehundredsixtyoneInitialEvent event,
    Emitter<OnehundredsixtyoneState> emit,
  ) async {
    emit(state.copyWith(
      passwordController: TextEditingController(),
      confirmpasswordController: TextEditingController(),
      isShowPassword: true,
      isShowPassword1: true,
    ));
  }
}
