import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:abdelhamed_s_application9/presentation/onehundredtwentythree_bottomsheet/models/onehundredtwentythree_model.dart';
part 'onehundredtwentythree_event.dart';
part 'onehundredtwentythree_state.dart';

/// A bloc that manages the state of a Onehundredtwentythree according to the event that is dispatched to it.
class OnehundredtwentythreeBloc
    extends Bloc<OnehundredtwentythreeEvent, OnehundredtwentythreeState> {
  OnehundredtwentythreeBloc(OnehundredtwentythreeState initialState)
      : super(initialState) {
    on<OnehundredtwentythreeInitialEvent>(_onInitialize);
  }

  _onInitialize(
    OnehundredtwentythreeInitialEvent event,
    Emitter<OnehundredtwentythreeState> emit,
  ) async {}
}
