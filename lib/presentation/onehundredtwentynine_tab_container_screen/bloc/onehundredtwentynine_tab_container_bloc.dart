import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:abdelhamed_s_application9/presentation/onehundredtwentynine_tab_container_screen/models/onehundredtwentynine_tab_container_model.dart';
part 'onehundredtwentynine_tab_container_event.dart';
part 'onehundredtwentynine_tab_container_state.dart';

/// A bloc that manages the state of a OnehundredtwentynineTabContainer according to the event that is dispatched to it.
class OnehundredtwentynineTabContainerBloc extends Bloc<
    OnehundredtwentynineTabContainerEvent,
    OnehundredtwentynineTabContainerState> {
  OnehundredtwentynineTabContainerBloc(
      OnehundredtwentynineTabContainerState initialState)
      : super(initialState) {
    on<OnehundredtwentynineTabContainerInitialEvent>(_onInitialize);
  }

  _onInitialize(
    OnehundredtwentynineTabContainerInitialEvent event,
    Emitter<OnehundredtwentynineTabContainerState> emit,
  ) async {}
}
