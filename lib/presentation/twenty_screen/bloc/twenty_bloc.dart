import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:abdelhamed_s_application9/presentation/twenty_screen/models/twenty_model.dart';
part 'twenty_event.dart';
part 'twenty_state.dart';

/// A bloc that manages the state of a Twenty according to the event that is dispatched to it.
class TwentyBloc extends Bloc<TwentyEvent, TwentyState> {
  TwentyBloc(TwentyState initialState) : super(initialState) {
    on<TwentyInitialEvent>(_onInitialize);
  }

  _onInitialize(
    TwentyInitialEvent event,
    Emitter<TwentyState> emit,
  ) async {}
}
