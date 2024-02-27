import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:abdelhamed_s_application9/presentation/onehundredthirteen_bottomsheet/models/onehundredthirteen_model.dart';
part 'onehundredthirteen_event.dart';
part 'onehundredthirteen_state.dart';

/// A bloc that manages the state of a Onehundredthirteen according to the event that is dispatched to it.
class OnehundredthirteenBloc
    extends Bloc<OnehundredthirteenEvent, OnehundredthirteenState> {
  OnehundredthirteenBloc(OnehundredthirteenState initialState)
      : super(initialState) {
    on<OnehundredthirteenInitialEvent>(_onInitialize);
  }

  _onInitialize(
    OnehundredthirteenInitialEvent event,
    Emitter<OnehundredthirteenState> emit,
  ) async {}
}
