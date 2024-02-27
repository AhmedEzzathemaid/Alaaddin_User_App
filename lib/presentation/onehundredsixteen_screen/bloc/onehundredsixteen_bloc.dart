import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:abdelhamed_s_application9/presentation/onehundredsixteen_screen/models/onehundredsixteen_model.dart';
part 'onehundredsixteen_event.dart';
part 'onehundredsixteen_state.dart';

/// A bloc that manages the state of a Onehundredsixteen according to the event that is dispatched to it.
class OnehundredsixteenBloc
    extends Bloc<OnehundredsixteenEvent, OnehundredsixteenState> {
  OnehundredsixteenBloc(OnehundredsixteenState initialState)
      : super(initialState) {
    on<OnehundredsixteenInitialEvent>(_onInitialize);
  }

  _onInitialize(
    OnehundredsixteenInitialEvent event,
    Emitter<OnehundredsixteenState> emit,
  ) async {}
}
