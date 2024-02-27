import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:abdelhamed_s_application9/presentation/onehundredfourteen_screen/models/onehundredfourteen_model.dart';
part 'onehundredfourteen_event.dart';
part 'onehundredfourteen_state.dart';

/// A bloc that manages the state of a Onehundredfourteen according to the event that is dispatched to it.
class OnehundredfourteenBloc
    extends Bloc<OnehundredfourteenEvent, OnehundredfourteenState> {
  OnehundredfourteenBloc(OnehundredfourteenState initialState)
      : super(initialState) {
    on<OnehundredfourteenInitialEvent>(_onInitialize);
    on<ChangeCheckBoxEvent>(_changeCheckBox);
  }

  _changeCheckBox(
    ChangeCheckBoxEvent event,
    Emitter<OnehundredfourteenState> emit,
  ) {
    emit(state.copyWith(
      checkmarksquareOne: event.value,
    ));
  }

  _onInitialize(
    OnehundredfourteenInitialEvent event,
    Emitter<OnehundredfourteenState> emit,
  ) async {
    emit(state.copyWith(
      typeReasonController: TextEditingController(),
      entireProductController: TextEditingController(),
      closeUpOfDefectController: TextEditingController(),
      packagevalueController: TextEditingController(),
      expirationDateController: TextEditingController(),
      cameraController: TextEditingController(),
      checkmarksquareOne: false,
    ));
  }
}
