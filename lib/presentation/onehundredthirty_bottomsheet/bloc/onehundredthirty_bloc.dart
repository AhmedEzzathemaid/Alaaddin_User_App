import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:abdelhamed_s_application9/presentation/onehundredthirty_bottomsheet/models/onehundredthirty_model.dart';
import 'package:sms_autofill/sms_autofill.dart';
part 'onehundredthirty_event.dart';
part 'onehundredthirty_state.dart';

/// A bloc that manages the state of a Onehundredthirty according to the event that is dispatched to it.
class OnehundredthirtyBloc
    extends Bloc<OnehundredthirtyEvent, OnehundredthirtyState>
    with CodeAutoFill {
  OnehundredthirtyBloc(OnehundredthirtyState initialState)
      : super(initialState) {
    on<OnehundredthirtyInitialEvent>(_onInitialize);
    on<ChangeOTPEvent>(_changeOTP);
  }

  @override
  codeUpdated() {
    add(ChangeOTPEvent(code: code!));
  }

  _changeOTP(
    ChangeOTPEvent event,
    Emitter<OnehundredthirtyState> emit,
  ) {
    emit(state.copyWith(
      otpController: TextEditingController(text: event.code),
    ));
  }

  _onInitialize(
    OnehundredthirtyInitialEvent event,
    Emitter<OnehundredthirtyState> emit,
  ) async {
    emit(state.copyWith(
      otpController: TextEditingController(),
    ));
    listenForCode();
  }
}
