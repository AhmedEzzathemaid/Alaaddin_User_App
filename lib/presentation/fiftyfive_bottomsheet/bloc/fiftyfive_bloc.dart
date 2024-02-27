import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:abdelhamed_s_application9/presentation/fiftyfive_bottomsheet/models/fiftyfive_model.dart';
part 'fiftyfive_event.dart';
part 'fiftyfive_state.dart';

/// A bloc that manages the state of a Fiftyfive according to the event that is dispatched to it.
class FiftyfiveBloc extends Bloc<FiftyfiveEvent, FiftyfiveState> {
  FiftyfiveBloc(FiftyfiveState initialState) : super(initialState) {
    on<FiftyfiveInitialEvent>(_onInitialize);
  }

  _onInitialize(
    FiftyfiveInitialEvent event,
    Emitter<FiftyfiveState> emit,
  ) async {}
}
