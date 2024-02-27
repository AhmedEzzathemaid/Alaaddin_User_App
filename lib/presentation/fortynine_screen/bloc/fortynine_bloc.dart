import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:abdelhamed_s_application9/presentation/fortynine_screen/models/fortynine_model.dart';
import 'package:sms_autofill/sms_autofill.dart';
part 'fortynine_event.dart';
part 'fortynine_state.dart';

/// A bloc that manages the state of a Fortynine according to the event that is dispatched to it.
class FortynineBloc extends Bloc<FortynineEvent, FortynineState>
    with CodeAutoFill {
  FortynineBloc(FortynineState initialState) : super(initialState) {
    on<FortynineInitialEvent>(_onInitialize);
    on<ChangeOTPEvent>(_changeOTP);
    on<ChangeOTP1Event>(_changeOTP1);
  }

  @override
  codeUpdated() {
    add(ChangeOTPEvent(code: code!));
  }

  _changeOTP(
    ChangeOTPEvent event,
    Emitter<FortynineState> emit,
  ) {
    emit(state.copyWith(
      otpController: TextEditingController(text: event.code),
    ));
  }

  @override
  codeUpdated() {
    add(ChangeOTP1Event(code: code!));
  }

  _changeOTP1(
    ChangeOTP1Event event,
    Emitter<FortynineState> emit,
  ) {
    emit(state.copyWith(
      otpController: TextEditingController(text: event.code),
    ));
  }

  _onInitialize(
    FortynineInitialEvent event,
    Emitter<FortynineState> emit,
  ) async {
    emit(state.copyWith(
      otpController: TextEditingController(),
    ));
    listenForCode();
  }
}
