import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:abdelhamed_s_application9/presentation/seventyeight_bottomsheet/models/seventyeight_model.dart';
part 'seventyeight_event.dart';
part 'seventyeight_state.dart';

/// A bloc that manages the state of a Seventyeight according to the event that is dispatched to it.
class SeventyeightBloc extends Bloc<SeventyeightEvent, SeventyeightState> {
  SeventyeightBloc(SeventyeightState initialState) : super(initialState) {
    on<SeventyeightInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SeventyeightInitialEvent event,
    Emitter<SeventyeightState> emit,
  ) async {}
}
