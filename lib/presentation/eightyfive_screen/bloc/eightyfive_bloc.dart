import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:abdelhamed_s_application9/presentation/eightyfive_screen/models/eightyfive_model.dart';
part 'eightyfive_event.dart';
part 'eightyfive_state.dart';

/// A bloc that manages the state of a Eightyfive according to the event that is dispatched to it.
class EightyfiveBloc extends Bloc<EightyfiveEvent, EightyfiveState> {
  EightyfiveBloc(EightyfiveState initialState) : super(initialState) {
    on<EightyfiveInitialEvent>(_onInitialize);
  }

  _onInitialize(
    EightyfiveInitialEvent event,
    Emitter<EightyfiveState> emit,
  ) async {
    emit(state.copyWith(
      emailController: TextEditingController(),
    ));
  }
}
