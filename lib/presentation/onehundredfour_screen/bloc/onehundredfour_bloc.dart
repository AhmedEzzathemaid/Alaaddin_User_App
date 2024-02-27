import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:abdelhamed_s_application9/presentation/onehundredfour_screen/models/onehundredfour_model.dart';
part 'onehundredfour_event.dart';
part 'onehundredfour_state.dart';

/// A bloc that manages the state of a Onehundredfour according to the event that is dispatched to it.
class OnehundredfourBloc
    extends Bloc<OnehundredfourEvent, OnehundredfourState> {
  OnehundredfourBloc(OnehundredfourState initialState) : super(initialState) {
    on<OnehundredfourInitialEvent>(_onInitialize);
  }

  _onInitialize(
    OnehundredfourInitialEvent event,
    Emitter<OnehundredfourState> emit,
  ) async {}
}
