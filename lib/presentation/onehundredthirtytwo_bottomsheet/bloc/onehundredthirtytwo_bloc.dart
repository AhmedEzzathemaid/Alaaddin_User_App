import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:abdelhamed_s_application9/presentation/onehundredthirtytwo_bottomsheet/models/onehundredthirtytwo_model.dart';
part 'onehundredthirtytwo_event.dart';
part 'onehundredthirtytwo_state.dart';

/// A bloc that manages the state of a Onehundredthirtytwo according to the event that is dispatched to it.
class OnehundredthirtytwoBloc
    extends Bloc<OnehundredthirtytwoEvent, OnehundredthirtytwoState> {
  OnehundredthirtytwoBloc(OnehundredthirtytwoState initialState)
      : super(initialState) {
    on<OnehundredthirtytwoInitialEvent>(_onInitialize);
  }

  _onInitialize(
    OnehundredthirtytwoInitialEvent event,
    Emitter<OnehundredthirtytwoState> emit,
  ) async {}
}
