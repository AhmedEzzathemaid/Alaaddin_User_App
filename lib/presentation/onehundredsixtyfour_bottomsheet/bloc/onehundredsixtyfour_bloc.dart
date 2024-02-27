import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:abdelhamed_s_application9/presentation/onehundredsixtyfour_bottomsheet/models/onehundredsixtyfour_model.dart';
import 'package:sms_autofill/sms_autofill.dart';
part 'onehundredsixtyfour_event.dart';
part 'onehundredsixtyfour_state.dart';

/// A bloc that manages the state of a Onehundredsixtyfour according to the event that is dispatched to it.
class OnehundredsixtyfourBloc
    extends Bloc<OnehundredsixtyfourEvent, OnehundredsixtyfourState>
    with CodeAutoFill {
  OnehundredsixtyfourBloc(OnehundredsixtyfourState initialState)
      : super(initialState) {
    on<OnehundredsixtyfourInitialEvent>(_onInitialize);
    on<ChangeOTPEvent>(_changeOTP);
  }

  @override
  codeUpdated() {
    add(ChangeOTPEvent(code: code!));
  }

  _changeOTP(
    ChangeOTPEvent event,
    Emitter<OnehundredsixtyfourState> emit,
  ) {
    emit(state.copyWith(
      otpController: TextEditingController(text: event.code),
    ));
  }

  _onInitialize(
    OnehundredsixtyfourInitialEvent event,
    Emitter<OnehundredsixtyfourState> emit,
  ) async {
    emit(state.copyWith(
      otpController: TextEditingController(),
    ));
    listenForCode();
  }
}
