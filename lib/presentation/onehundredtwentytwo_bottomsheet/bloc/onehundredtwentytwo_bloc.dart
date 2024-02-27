import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:abdelhamed_s_application9/presentation/onehundredtwentytwo_bottomsheet/models/onehundredtwentytwo_model.dart';
part 'onehundredtwentytwo_event.dart';
part 'onehundredtwentytwo_state.dart';

/// A bloc that manages the state of a Onehundredtwentytwo according to the event that is dispatched to it.
class OnehundredtwentytwoBloc
    extends Bloc<OnehundredtwentytwoEvent, OnehundredtwentytwoState> {
  OnehundredtwentytwoBloc(OnehundredtwentytwoState initialState)
      : super(initialState) {
    on<OnehundredtwentytwoInitialEvent>(_onInitialize);
  }

  _onInitialize(
    OnehundredtwentytwoInitialEvent event,
    Emitter<OnehundredtwentytwoState> emit,
  ) async {
    emit(state.copyWith(
      questionThreeController: TextEditingController(),
    ));
  }
}
