import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:abdelhamed_s_application9/presentation/twentyone_page/models/twentyone_model.dart';
part 'twentyone_event.dart';
part 'twentyone_state.dart';

/// A bloc that manages the state of a Twentyone according to the event that is dispatched to it.
class TwentyoneBloc extends Bloc<TwentyoneEvent, TwentyoneState> {
  TwentyoneBloc(TwentyoneState initialState) : super(initialState) {
    on<TwentyoneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    TwentyoneInitialEvent event,
    Emitter<TwentyoneState> emit,
  ) async {}
}
