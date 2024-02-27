import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:abdelhamed_s_application9/presentation/onehundredthirtyone_bottomsheet/models/onehundredthirtyone_model.dart';
import 'package:sms_autofill/sms_autofill.dart';
part 'onehundredthirtyone_event.dart';
part 'onehundredthirtyone_state.dart';

/// A bloc that manages the state of a Onehundredthirtyone according to the event that is dispatched to it.
class OnehundredthirtyoneBloc
    extends Bloc<OnehundredthirtyoneEvent, OnehundredthirtyoneState>
    with CodeAutoFill {
  OnehundredthirtyoneBloc(OnehundredthirtyoneState initialState)
      : super(initialState) {
    on<OnehundredthirtyoneInitialEvent>(_onInitialize);
    on<ChangeOTPEvent>(_changeOTP);
  }

  @override
  codeUpdated() {
    add(ChangeOTPEvent(code: code!));
  }

  _changeOTP(
    ChangeOTPEvent event,
    Emitter<OnehundredthirtyoneState> emit,
  ) {
    emit(state.copyWith(
      otpController: TextEditingController(text: event.code),
    ));
  }

  _onInitialize(
    OnehundredthirtyoneInitialEvent event,
    Emitter<OnehundredthirtyoneState> emit,
  ) async {
    emit(state.copyWith(
      otpController: TextEditingController(),
    ));
    listenForCode();
  }
}
