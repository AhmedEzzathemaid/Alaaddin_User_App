import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:abdelhamed_s_application9/presentation/ninetyfive_bottomsheet/models/ninetyfive_model.dart';
part 'ninetyfive_event.dart';
part 'ninetyfive_state.dart';

/// A bloc that manages the state of a Ninetyfive according to the event that is dispatched to it.
class NinetyfiveBloc extends Bloc<NinetyfiveEvent, NinetyfiveState> {
  NinetyfiveBloc(NinetyfiveState initialState) : super(initialState) {
    on<NinetyfiveInitialEvent>(_onInitialize);
  }

  _onInitialize(
    NinetyfiveInitialEvent event,
    Emitter<NinetyfiveState> emit,
  ) async {}
}
