import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:abdelhamed_s_application9/presentation/seventysix_bottomsheet/models/seventysix_model.dart';
part 'seventysix_event.dart';
part 'seventysix_state.dart';

/// A bloc that manages the state of a Seventysix according to the event that is dispatched to it.
class SeventysixBloc extends Bloc<SeventysixEvent, SeventysixState> {
  SeventysixBloc(SeventysixState initialState) : super(initialState) {
    on<SeventysixInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SeventysixInitialEvent event,
    Emitter<SeventysixState> emit,
  ) async {}
}
