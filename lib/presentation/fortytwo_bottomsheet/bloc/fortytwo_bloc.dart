import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:abdelhamed_s_application9/presentation/fortytwo_bottomsheet/models/fortytwo_model.dart';
part 'fortytwo_event.dart';
part 'fortytwo_state.dart';

/// A bloc that manages the state of a Fortytwo according to the event that is dispatched to it.
class FortytwoBloc extends Bloc<FortytwoEvent, FortytwoState> {
  FortytwoBloc(FortytwoState initialState) : super(initialState) {
    on<FortytwoInitialEvent>(_onInitialize);
  }

  _onInitialize(
    FortytwoInitialEvent event,
    Emitter<FortytwoState> emit,
  ) async {
    emit(state.copyWith(
      searchController: TextEditingController(),
    ));
  }
}
