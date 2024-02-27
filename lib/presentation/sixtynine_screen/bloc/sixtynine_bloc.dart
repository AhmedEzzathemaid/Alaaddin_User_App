import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:abdelhamed_s_application9/presentation/sixtynine_screen/models/sixtynine_model.dart';
part 'sixtynine_event.dart';
part 'sixtynine_state.dart';

/// A bloc that manages the state of a Sixtynine according to the event that is dispatched to it.
class SixtynineBloc extends Bloc<SixtynineEvent, SixtynineState> {
  SixtynineBloc(SixtynineState initialState) : super(initialState) {
    on<SixtynineInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SixtynineInitialEvent event,
    Emitter<SixtynineState> emit,
  ) async {
    emit(state.copyWith(
      searchController: TextEditingController(),
    ));
  }
}
