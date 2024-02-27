import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:abdelhamed_s_application9/presentation/eightyseven_bottomsheet/models/eightyseven_model.dart';
part 'eightyseven_event.dart';
part 'eightyseven_state.dart';

/// A bloc that manages the state of a Eightyseven according to the event that is dispatched to it.
class EightysevenBloc extends Bloc<EightysevenEvent, EightysevenState> {
  EightysevenBloc(EightysevenState initialState) : super(initialState) {
    on<EightysevenInitialEvent>(_onInitialize);
  }

  _onInitialize(
    EightysevenInitialEvent event,
    Emitter<EightysevenState> emit,
  ) async {}
}
