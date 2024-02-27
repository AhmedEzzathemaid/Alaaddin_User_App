import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:abdelhamed_s_application9/presentation/fiftyfour_bottomsheet/models/fiftyfour_model.dart';
part 'fiftyfour_event.dart';
part 'fiftyfour_state.dart';

/// A bloc that manages the state of a Fiftyfour according to the event that is dispatched to it.
class FiftyfourBloc extends Bloc<FiftyfourEvent, FiftyfourState> {
  FiftyfourBloc(FiftyfourState initialState) : super(initialState) {
    on<FiftyfourInitialEvent>(_onInitialize);
  }

  _onInitialize(
    FiftyfourInitialEvent event,
    Emitter<FiftyfourState> emit,
  ) async {}
}
