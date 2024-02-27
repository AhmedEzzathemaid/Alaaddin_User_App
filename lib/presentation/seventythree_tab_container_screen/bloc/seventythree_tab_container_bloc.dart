import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:abdelhamed_s_application9/presentation/seventythree_tab_container_screen/models/seventythree_tab_container_model.dart';
part 'seventythree_tab_container_event.dart';
part 'seventythree_tab_container_state.dart';

/// A bloc that manages the state of a SeventythreeTabContainer according to the event that is dispatched to it.
class SeventythreeTabContainerBloc
    extends Bloc<SeventythreeTabContainerEvent, SeventythreeTabContainerState> {
  SeventythreeTabContainerBloc(SeventythreeTabContainerState initialState)
      : super(initialState) {
    on<SeventythreeTabContainerInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SeventythreeTabContainerInitialEvent event,
    Emitter<SeventythreeTabContainerState> emit,
  ) async {}
}
