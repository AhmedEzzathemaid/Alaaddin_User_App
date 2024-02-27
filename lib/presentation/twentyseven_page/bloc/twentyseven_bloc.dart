import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:abdelhamed_s_application9/presentation/twentyseven_page/models/twentyseven_model.dart';
part 'twentyseven_event.dart';
part 'twentyseven_state.dart';

/// A bloc that manages the state of a Twentyseven according to the event that is dispatched to it.
class TwentysevenBloc extends Bloc<TwentysevenEvent, TwentysevenState> {
  TwentysevenBloc(TwentysevenState initialState) : super(initialState) {
    on<TwentysevenInitialEvent>(_onInitialize);
  }

  _onInitialize(
    TwentysevenInitialEvent event,
    Emitter<TwentysevenState> emit,
  ) async {}
}
