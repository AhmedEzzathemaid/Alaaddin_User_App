import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:abdelhamed_s_application9/presentation/ninetysix_bottomsheet/models/ninetysix_model.dart';
part 'ninetysix_event.dart';
part 'ninetysix_state.dart';

/// A bloc that manages the state of a Ninetysix according to the event that is dispatched to it.
class NinetysixBloc extends Bloc<NinetysixEvent, NinetysixState> {
  NinetysixBloc(NinetysixState initialState) : super(initialState) {
    on<NinetysixInitialEvent>(_onInitialize);
  }

  _onInitialize(
    NinetysixInitialEvent event,
    Emitter<NinetysixState> emit,
  ) async {}
}
