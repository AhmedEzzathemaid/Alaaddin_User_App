import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:abdelhamed_s_application9/presentation/thirty_tab_container_screen/models/thirty_tab_container_model.dart';
part 'thirty_tab_container_event.dart';
part 'thirty_tab_container_state.dart';

/// A bloc that manages the state of a ThirtyTabContainer according to the event that is dispatched to it.
class ThirtyTabContainerBloc
    extends Bloc<ThirtyTabContainerEvent, ThirtyTabContainerState> {
  ThirtyTabContainerBloc(ThirtyTabContainerState initialState)
      : super(initialState) {
    on<ThirtyTabContainerInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ThirtyTabContainerInitialEvent event,
    Emitter<ThirtyTabContainerState> emit,
  ) async {
    emit(state.copyWith(
      searchController: TextEditingController(),
    ));
  }
}
