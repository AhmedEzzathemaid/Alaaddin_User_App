import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:abdelhamed_s_application9/presentation/onehundredsixtyseven_tab_container_page/models/onehundredsixtyseven_tab_container_model.dart';
part 'onehundredsixtyseven_tab_container_event.dart';
part 'onehundredsixtyseven_tab_container_state.dart';

/// A bloc that manages the state of a OnehundredsixtysevenTabContainer according to the event that is dispatched to it.
class OnehundredsixtysevenTabContainerBloc extends Bloc<
    OnehundredsixtysevenTabContainerEvent,
    OnehundredsixtysevenTabContainerState> {
  OnehundredsixtysevenTabContainerBloc(
      OnehundredsixtysevenTabContainerState initialState)
      : super(initialState) {
    on<OnehundredsixtysevenTabContainerInitialEvent>(_onInitialize);
  }

  _onInitialize(
    OnehundredsixtysevenTabContainerInitialEvent event,
    Emitter<OnehundredsixtysevenTabContainerState> emit,
  ) async {}
}
