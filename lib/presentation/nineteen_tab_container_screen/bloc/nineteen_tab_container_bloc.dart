import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:abdelhamed_s_application9/presentation/nineteen_tab_container_screen/models/nineteen_tab_container_model.dart';
part 'nineteen_tab_container_event.dart';
part 'nineteen_tab_container_state.dart';

/// A bloc that manages the state of a NineteenTabContainer according to the event that is dispatched to it.
class NineteenTabContainerBloc
    extends Bloc<NineteenTabContainerEvent, NineteenTabContainerState> {
  NineteenTabContainerBloc(NineteenTabContainerState initialState)
      : super(initialState) {
    on<NineteenTabContainerInitialEvent>(_onInitialize);
  }

  _onInitialize(
    NineteenTabContainerInitialEvent event,
    Emitter<NineteenTabContainerState> emit,
  ) async {
    emit(state.copyWith(
      searchController: TextEditingController(),
    ));
  }
}
