import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:abdelhamed_s_application9/presentation/thirtytwo_screen/models/thirtytwo_model.dart';
part 'thirtytwo_event.dart';
part 'thirtytwo_state.dart';

/// A bloc that manages the state of a Thirtytwo according to the event that is dispatched to it.
class ThirtytwoBloc extends Bloc<ThirtytwoEvent, ThirtytwoState> {
  ThirtytwoBloc(ThirtytwoState initialState) : super(initialState) {
    on<ThirtytwoInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ThirtytwoInitialEvent event,
    Emitter<ThirtytwoState> emit,
  ) async {
    emit(state.copyWith(
      categoryTwoController: TextEditingController(),
      categoryThreeController: TextEditingController(),
      categoryFourController: TextEditingController(),
      categoryFiveController: TextEditingController(),
      categorySixController: TextEditingController(),
      categorySevenController: TextEditingController(),
    ));
  }
}
