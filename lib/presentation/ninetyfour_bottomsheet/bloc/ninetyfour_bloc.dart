import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:abdelhamed_s_application9/presentation/ninetyfour_bottomsheet/models/ninetyfour_model.dart';
part 'ninetyfour_event.dart';
part 'ninetyfour_state.dart';

/// A bloc that manages the state of a Ninetyfour according to the event that is dispatched to it.
class NinetyfourBloc extends Bloc<NinetyfourEvent, NinetyfourState> {
  NinetyfourBloc(NinetyfourState initialState) : super(initialState) {
    on<NinetyfourInitialEvent>(_onInitialize);
  }

  _onInitialize(
    NinetyfourInitialEvent event,
    Emitter<NinetyfourState> emit,
  ) async {}
}
