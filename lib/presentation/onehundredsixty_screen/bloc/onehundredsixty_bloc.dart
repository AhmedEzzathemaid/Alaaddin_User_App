import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:abdelhamed_s_application9/presentation/onehundredsixty_screen/models/onehundredsixty_model.dart';
import 'package:sms_autofill/sms_autofill.dart';
part 'onehundredsixty_event.dart';
part 'onehundredsixty_state.dart';

/// A bloc that manages the state of a Onehundredsixty according to the event that is dispatched to it.
class OnehundredsixtyBloc
    extends Bloc<OnehundredsixtyEvent, OnehundredsixtyState> with CodeAutoFill {
  OnehundredsixtyBloc(OnehundredsixtyState initialState) : super(initialState) {
    on<OnehundredsixtyInitialEvent>(_onInitialize);
    on<ChangeOTPEvent>(_changeOTP);
  }

  @override
  codeUpdated() {
    add(ChangeOTPEvent(code: code!));
  }

  _changeOTP(
    ChangeOTPEvent event,
    Emitter<OnehundredsixtyState> emit,
  ) {
    emit(state.copyWith(
      otpController: TextEditingController(text: event.code),
    ));
  }

  _onInitialize(
    OnehundredsixtyInitialEvent event,
    Emitter<OnehundredsixtyState> emit,
  ) async {
    emit(state.copyWith(
      otpController: TextEditingController(),
    ));
    listenForCode();
  }
}
