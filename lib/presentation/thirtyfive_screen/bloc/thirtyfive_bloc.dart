import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:abdelhamed_s_application9/presentation/thirtyfive_screen/models/thirtyfive_model.dart';
part 'thirtyfive_event.dart';
part 'thirtyfive_state.dart';

/// A bloc that manages the state of a Thirtyfive according to the event that is dispatched to it.
class ThirtyfiveBloc extends Bloc<ThirtyfiveEvent, ThirtyfiveState> {
  ThirtyfiveBloc(ThirtyfiveState initialState) : super(initialState) {
    on<ThirtyfiveInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ThirtyfiveInitialEvent event,
    Emitter<ThirtyfiveState> emit,
  ) async {}
}
