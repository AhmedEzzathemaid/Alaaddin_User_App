import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:abdelhamed_s_application9/presentation/eighteen_page/models/eighteen_model.dart';
part 'eighteen_event.dart';
part 'eighteen_state.dart';

/// A bloc that manages the state of a Eighteen according to the event that is dispatched to it.
class EighteenBloc extends Bloc<EighteenEvent, EighteenState> {
  EighteenBloc(EighteenState initialState) : super(initialState) {
    on<EighteenInitialEvent>(_onInitialize);
  }

  _onInitialize(
    EighteenInitialEvent event,
    Emitter<EighteenState> emit,
  ) async {}
}
