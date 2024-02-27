import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:abdelhamed_s_application9/presentation/seventytwo_bottomsheet/models/seventytwo_model.dart';
part 'seventytwo_event.dart';
part 'seventytwo_state.dart';

/// A bloc that manages the state of a Seventytwo according to the event that is dispatched to it.
class SeventytwoBloc extends Bloc<SeventytwoEvent, SeventytwoState> {
  SeventytwoBloc(SeventytwoState initialState) : super(initialState) {
    on<SeventytwoInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SeventytwoInitialEvent event,
    Emitter<SeventytwoState> emit,
  ) async {}
}
