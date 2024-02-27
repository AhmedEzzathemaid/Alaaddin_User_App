import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:abdelhamed_s_application9/presentation/onehundredten_screen/models/onehundredten_model.dart';
part 'onehundredten_event.dart';
part 'onehundredten_state.dart';

/// A bloc that manages the state of a Onehundredten according to the event that is dispatched to it.
class OnehundredtenBloc extends Bloc<OnehundredtenEvent, OnehundredtenState> {
  OnehundredtenBloc(OnehundredtenState initialState) : super(initialState) {
    on<OnehundredtenInitialEvent>(_onInitialize);
    on<ChangeCheckBoxEvent>(_changeCheckBox);
  }

  _changeCheckBox(
    ChangeCheckBoxEvent event,
    Emitter<OnehundredtenState> emit,
  ) {
    emit(state.copyWith(
      checkmarksquareOne: event.value,
    ));
  }

  _onInitialize(
    OnehundredtenInitialEvent event,
    Emitter<OnehundredtenState> emit,
  ) async {
    emit(state.copyWith(
      typeReasonController: TextEditingController(),
      entireProductController: TextEditingController(),
      closeUpDefectController: TextEditingController(),
      packagevalueController: TextEditingController(),
      expirationDateController: TextEditingController(),
      nonRepairabilityController: TextEditingController(),
      checkmarksquareOne: false,
    ));
  }
}
