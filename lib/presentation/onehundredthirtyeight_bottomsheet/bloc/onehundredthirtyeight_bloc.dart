import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:abdelhamed_s_application9/presentation/onehundredthirtyeight_bottomsheet/models/onehundredthirtyeight_model.dart';
part 'onehundredthirtyeight_event.dart';
part 'onehundredthirtyeight_state.dart';

/// A bloc that manages the state of a Onehundredthirtyeight according to the event that is dispatched to it.
class OnehundredthirtyeightBloc
    extends Bloc<OnehundredthirtyeightEvent, OnehundredthirtyeightState> {
  OnehundredthirtyeightBloc(OnehundredthirtyeightState initialState)
      : super(initialState) {
    on<OnehundredthirtyeightInitialEvent>(_onInitialize);
  }

  _onInitialize(
    OnehundredthirtyeightInitialEvent event,
    Emitter<OnehundredthirtyeightState> emit,
  ) async {}
}
