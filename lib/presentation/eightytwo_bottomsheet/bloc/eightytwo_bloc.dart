import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:abdelhamed_s_application9/presentation/eightytwo_bottomsheet/models/eightytwo_model.dart';
part 'eightytwo_event.dart';
part 'eightytwo_state.dart';

/// A bloc that manages the state of a Eightytwo according to the event that is dispatched to it.
class EightytwoBloc extends Bloc<EightytwoEvent, EightytwoState> {
  EightytwoBloc(EightytwoState initialState) : super(initialState) {
    on<EightytwoInitialEvent>(_onInitialize);
  }

  _onInitialize(
    EightytwoInitialEvent event,
    Emitter<EightytwoState> emit,
  ) async {}
}
