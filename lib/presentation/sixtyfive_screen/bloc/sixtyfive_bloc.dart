import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:abdelhamed_s_application9/presentation/sixtyfive_screen/models/sixtyfive_model.dart';
part 'sixtyfive_event.dart';
part 'sixtyfive_state.dart';

/// A bloc that manages the state of a Sixtyfive according to the event that is dispatched to it.
class SixtyfiveBloc extends Bloc<SixtyfiveEvent, SixtyfiveState> {
  SixtyfiveBloc(SixtyfiveState initialState) : super(initialState) {
    on<SixtyfiveInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SixtyfiveInitialEvent event,
    Emitter<SixtyfiveState> emit,
  ) async {}
}
