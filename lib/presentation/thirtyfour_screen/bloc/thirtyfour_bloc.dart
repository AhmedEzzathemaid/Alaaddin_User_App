import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:abdelhamed_s_application9/presentation/thirtyfour_screen/models/thirtyfour_model.dart';
part 'thirtyfour_event.dart';
part 'thirtyfour_state.dart';

/// A bloc that manages the state of a Thirtyfour according to the event that is dispatched to it.
class ThirtyfourBloc extends Bloc<ThirtyfourEvent, ThirtyfourState> {
  ThirtyfourBloc(ThirtyfourState initialState) : super(initialState) {
    on<ThirtyfourInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ThirtyfourInitialEvent event,
    Emitter<ThirtyfourState> emit,
  ) async {
    emit(state.copyWith(
      sizeCategoryController: TextEditingController(),
      categoryController: TextEditingController(),
      sizeController: TextEditingController(),
      materialController: TextEditingController(),
      fabricController: TextEditingController(),
      styleController: TextEditingController(),
    ));
  }
}
