import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:abdelhamed_s_application9/presentation/onehundredfiftytwo_screen/models/onehundredfiftytwo_model.dart';
part 'onehundredfiftytwo_event.dart';
part 'onehundredfiftytwo_state.dart';

/// A bloc that manages the state of a Onehundredfiftytwo according to the event that is dispatched to it.
class OnehundredfiftytwoBloc
    extends Bloc<OnehundredfiftytwoEvent, OnehundredfiftytwoState> {
  OnehundredfiftytwoBloc(OnehundredfiftytwoState initialState)
      : super(initialState) {
    on<OnehundredfiftytwoInitialEvent>(_onInitialize);
  }

  _onInitialize(
    OnehundredfiftytwoInitialEvent event,
    Emitter<OnehundredfiftytwoState> emit,
  ) async {}
}
