import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:abdelhamed_s_application9/presentation/ninetynine_screen/models/ninetynine_model.dart';
part 'ninetynine_event.dart';
part 'ninetynine_state.dart';

/// A bloc that manages the state of a Ninetynine according to the event that is dispatched to it.
class NinetynineBloc extends Bloc<NinetynineEvent, NinetynineState> {
  NinetynineBloc(NinetynineState initialState) : super(initialState) {
    on<NinetynineInitialEvent>(_onInitialize);
  }

  _onInitialize(
    NinetynineInitialEvent event,
    Emitter<NinetynineState> emit,
  ) async {}
}
