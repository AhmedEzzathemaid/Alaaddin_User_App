import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:abdelhamed_s_application9/presentation/onehundredfortytwo_bottomsheet/models/onehundredfortytwo_model.dart';
part 'onehundredfortytwo_event.dart';
part 'onehundredfortytwo_state.dart';

/// A bloc that manages the state of a Onehundredfortytwo according to the event that is dispatched to it.
class OnehundredfortytwoBloc
    extends Bloc<OnehundredfortytwoEvent, OnehundredfortytwoState> {
  OnehundredfortytwoBloc(OnehundredfortytwoState initialState)
      : super(initialState) {
    on<OnehundredfortytwoInitialEvent>(_onInitialize);
  }

  _onInitialize(
    OnehundredfortytwoInitialEvent event,
    Emitter<OnehundredfortytwoState> emit,
  ) async {
    emit(state.copyWith(
      valueController: TextEditingController(),
    ));
  }
}
