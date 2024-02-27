import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:abdelhamed_s_application9/presentation/onehundredseventeen_bottomsheet/models/onehundredseventeen_model.dart';
part 'onehundredseventeen_event.dart';
part 'onehundredseventeen_state.dart';

/// A bloc that manages the state of a Onehundredseventeen according to the event that is dispatched to it.
class OnehundredseventeenBloc
    extends Bloc<OnehundredseventeenEvent, OnehundredseventeenState> {
  OnehundredseventeenBloc(OnehundredseventeenState initialState)
      : super(initialState) {
    on<OnehundredseventeenInitialEvent>(_onInitialize);
  }

  _onInitialize(
    OnehundredseventeenInitialEvent event,
    Emitter<OnehundredseventeenState> emit,
  ) async {}
}
