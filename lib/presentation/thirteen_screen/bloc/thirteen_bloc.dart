import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:abdelhamed_s_application9/presentation/thirteen_screen/models/thirteen_model.dart';
part 'thirteen_event.dart';
part 'thirteen_state.dart';

/// A bloc that manages the state of a Thirteen according to the event that is dispatched to it.
class ThirteenBloc extends Bloc<ThirteenEvent, ThirteenState> {
  ThirteenBloc(ThirteenState initialState) : super(initialState) {
    on<ThirteenInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ThirteenInitialEvent event,
    Emitter<ThirteenState> emit,
  ) async {}
}
