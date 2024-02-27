import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:abdelhamed_s_application9/presentation/thirtythree_screen/models/thirtythree_model.dart';
part 'thirtythree_event.dart';
part 'thirtythree_state.dart';

/// A bloc that manages the state of a Thirtythree according to the event that is dispatched to it.
class ThirtythreeBloc extends Bloc<ThirtythreeEvent, ThirtythreeState> {
  ThirtythreeBloc(ThirtythreeState initialState) : super(initialState) {
    on<ThirtythreeInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ThirtythreeInitialEvent event,
    Emitter<ThirtythreeState> emit,
  ) async {
    emit(state.copyWith(
      jacketsvalueController: TextEditingController(),
      cartController: TextEditingController(),
      cartController1: TextEditingController(),
      underwearvalueController: TextEditingController(),
      jumpsuitsvalueController: TextEditingController(),
      sportsvalueController: TextEditingController(),
      blazersvalueController: TextEditingController(),
      bigsizesvalueController: TextEditingController(),
      underwearvalueController1: TextEditingController(),
      jumpsuitsvalueController1: TextEditingController(),
    ));
  }
}
