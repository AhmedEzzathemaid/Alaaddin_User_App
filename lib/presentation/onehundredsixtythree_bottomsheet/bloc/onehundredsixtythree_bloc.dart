import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:abdelhamed_s_application9/presentation/onehundredsixtythree_bottomsheet/models/onehundredsixtythree_model.dart';
import 'package:sms_autofill/sms_autofill.dart';
part 'onehundredsixtythree_event.dart';
part 'onehundredsixtythree_state.dart';

/// A bloc that manages the state of a Onehundredsixtythree according to the event that is dispatched to it.
class OnehundredsixtythreeBloc
    extends Bloc<OnehundredsixtythreeEvent, OnehundredsixtythreeState>
    with CodeAutoFill {
  OnehundredsixtythreeBloc(OnehundredsixtythreeState initialState)
      : super(initialState) {
    on<OnehundredsixtythreeInitialEvent>(_onInitialize);
    on<ChangeOTPEvent>(_changeOTP);
  }

  @override
  codeUpdated() {
    add(ChangeOTPEvent(code: code!));
  }

  _changeOTP(
    ChangeOTPEvent event,
    Emitter<OnehundredsixtythreeState> emit,
  ) {
    emit(state.copyWith(
      otpController: TextEditingController(text: event.code),
    ));
  }

  _onInitialize(
    OnehundredsixtythreeInitialEvent event,
    Emitter<OnehundredsixtythreeState> emit,
  ) async {
    emit(state.copyWith(
      otpController: TextEditingController(),
    ));
    listenForCode();
  }
}
