import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:abdelhamed_s_application9/presentation/fiftysix_bottomsheet/models/fiftysix_model.dart';
part 'fiftysix_event.dart';
part 'fiftysix_state.dart';

/// A bloc that manages the state of a Fiftysix according to the event that is dispatched to it.
class FiftysixBloc extends Bloc<FiftysixEvent, FiftysixState> {
  FiftysixBloc(FiftysixState initialState) : super(initialState) {
    on<FiftysixInitialEvent>(_onInitialize);
  }

  _onInitialize(
    FiftysixInitialEvent event,
    Emitter<FiftysixState> emit,
  ) async {}
}
