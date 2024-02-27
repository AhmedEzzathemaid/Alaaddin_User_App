import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:abdelhamed_s_application9/presentation/thirty_page/models/thirty_model.dart';
part 'thirty_event.dart';
part 'thirty_state.dart';

/// A bloc that manages the state of a Thirty according to the event that is dispatched to it.
class ThirtyBloc extends Bloc<ThirtyEvent, ThirtyState> {
  ThirtyBloc(ThirtyState initialState) : super(initialState) {
    on<ThirtyInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ThirtyInitialEvent event,
    Emitter<ThirtyState> emit,
  ) async {}
}
