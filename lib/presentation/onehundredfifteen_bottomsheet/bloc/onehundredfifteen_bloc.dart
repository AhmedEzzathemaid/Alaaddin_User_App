import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:abdelhamed_s_application9/presentation/onehundredfifteen_bottomsheet/models/onehundredfifteen_model.dart';
part 'onehundredfifteen_event.dart';
part 'onehundredfifteen_state.dart';

/// A bloc that manages the state of a Onehundredfifteen according to the event that is dispatched to it.
class OnehundredfifteenBloc
    extends Bloc<OnehundredfifteenEvent, OnehundredfifteenState> {
  OnehundredfifteenBloc(OnehundredfifteenState initialState)
      : super(initialState) {
    on<OnehundredfifteenInitialEvent>(_onInitialize);
  }

  _onInitialize(
    OnehundredfifteenInitialEvent event,
    Emitter<OnehundredfifteenState> emit,
  ) async {}
}
