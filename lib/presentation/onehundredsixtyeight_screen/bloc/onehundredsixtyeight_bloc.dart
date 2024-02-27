import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:abdelhamed_s_application9/presentation/onehundredsixtyeight_screen/models/onehundredsixtyeight_model.dart';
part 'onehundredsixtyeight_event.dart';
part 'onehundredsixtyeight_state.dart';

/// A bloc that manages the state of a Onehundredsixtyeight according to the event that is dispatched to it.
class OnehundredsixtyeightBloc
    extends Bloc<OnehundredsixtyeightEvent, OnehundredsixtyeightState> {
  OnehundredsixtyeightBloc(OnehundredsixtyeightState initialState)
      : super(initialState) {
    on<OnehundredsixtyeightInitialEvent>(_onInitialize);
  }

  _onInitialize(
    OnehundredsixtyeightInitialEvent event,
    Emitter<OnehundredsixtyeightState> emit,
  ) async {}
}
