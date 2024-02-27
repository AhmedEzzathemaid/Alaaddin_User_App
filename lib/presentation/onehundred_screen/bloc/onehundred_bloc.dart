import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:abdelhamed_s_application9/presentation/onehundred_screen/models/onehundred_model.dart';
part 'onehundred_event.dart';
part 'onehundred_state.dart';

/// A bloc that manages the state of a Onehundred according to the event that is dispatched to it.
class OnehundredBloc extends Bloc<OnehundredEvent, OnehundredState> {
  OnehundredBloc(OnehundredState initialState) : super(initialState) {
    on<OnehundredInitialEvent>(_onInitialize);
  }

  _onInitialize(
    OnehundredInitialEvent event,
    Emitter<OnehundredState> emit,
  ) async {
    emit(state.copyWith(
      paymentmethodvalueController: TextEditingController(),
    ));
  }
}
