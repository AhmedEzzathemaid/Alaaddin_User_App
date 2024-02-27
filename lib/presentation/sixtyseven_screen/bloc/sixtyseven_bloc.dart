import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:abdelhamed_s_application9/presentation/sixtyseven_screen/models/sixtyseven_model.dart';
part 'sixtyseven_event.dart';
part 'sixtyseven_state.dart';

/// A bloc that manages the state of a Sixtyseven according to the event that is dispatched to it.
class SixtysevenBloc extends Bloc<SixtysevenEvent, SixtysevenState> {
  SixtysevenBloc(SixtysevenState initialState) : super(initialState) {
    on<SixtysevenInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SixtysevenInitialEvent event,
    Emitter<SixtysevenState> emit,
  ) async {}
}
