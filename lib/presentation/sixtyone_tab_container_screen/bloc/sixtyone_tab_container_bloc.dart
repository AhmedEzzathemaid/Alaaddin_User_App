import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:abdelhamed_s_application9/presentation/sixtyone_tab_container_screen/models/sixtyone_tab_container_model.dart';
part 'sixtyone_tab_container_event.dart';
part 'sixtyone_tab_container_state.dart';

/// A bloc that manages the state of a SixtyoneTabContainer according to the event that is dispatched to it.
class SixtyoneTabContainerBloc
    extends Bloc<SixtyoneTabContainerEvent, SixtyoneTabContainerState> {
  SixtyoneTabContainerBloc(SixtyoneTabContainerState initialState)
      : super(initialState) {
    on<SixtyoneTabContainerInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SixtyoneTabContainerInitialEvent event,
    Emitter<SixtyoneTabContainerState> emit,
  ) async {}
}
