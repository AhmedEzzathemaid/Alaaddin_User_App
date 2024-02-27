import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:abdelhamed_s_application9/presentation/sixtytwo_page/models/sixtytwo_model.dart';
part 'sixtytwo_event.dart';
part 'sixtytwo_state.dart';

/// A bloc that manages the state of a Sixtytwo according to the event that is dispatched to it.
class SixtytwoBloc extends Bloc<SixtytwoEvent, SixtytwoState> {
  SixtytwoBloc(SixtytwoState initialState) : super(initialState) {
    on<SixtytwoInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SixtytwoInitialEvent event,
    Emitter<SixtytwoState> emit,
  ) async {}
}
