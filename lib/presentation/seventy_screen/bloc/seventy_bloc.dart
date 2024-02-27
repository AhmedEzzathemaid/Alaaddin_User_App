import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:abdelhamed_s_application9/presentation/seventy_screen/models/seventy_model.dart';
part 'seventy_event.dart';
part 'seventy_state.dart';

/// A bloc that manages the state of a Seventy according to the event that is dispatched to it.
class SeventyBloc extends Bloc<SeventyEvent, SeventyState> {
  SeventyBloc(SeventyState initialState) : super(initialState) {
    on<SeventyInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SeventyInitialEvent event,
    Emitter<SeventyState> emit,
  ) async {
    emit(state.copyWith(
      searchController: TextEditingController(),
    ));
  }
}
