import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:abdelhamed_s_application9/presentation/fortyone_bottomsheet/models/fortyone_model.dart';
import 'package:sms_autofill/sms_autofill.dart';
part 'fortyone_event.dart';
part 'fortyone_state.dart';

/// A bloc that manages the state of a Fortyone according to the event that is dispatched to it.
class FortyoneBloc extends Bloc<FortyoneEvent, FortyoneState>
    with CodeAutoFill {
  FortyoneBloc(FortyoneState initialState) : super(initialState) {
    on<FortyoneInitialEvent>(_onInitialize);
    on<ChangeOTPEvent>(_changeOTP);
  }

  @override
  codeUpdated() {
    add(ChangeOTPEvent(code: code!));
  }

  _changeOTP(
    ChangeOTPEvent event,
    Emitter<FortyoneState> emit,
  ) {
    emit(state.copyWith(
      otpController: TextEditingController(text: event.code),
    ));
  }

  _onInitialize(
    FortyoneInitialEvent event,
    Emitter<FortyoneState> emit,
  ) async {
    emit(state.copyWith(
      searchController: TextEditingController(),
      otpController: TextEditingController(),
    ));
    listenForCode();
  }
}
