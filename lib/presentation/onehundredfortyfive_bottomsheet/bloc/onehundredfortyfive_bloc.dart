import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:abdelhamed_s_application9/presentation/onehundredfortyfive_bottomsheet/models/onehundredfortyfive_model.dart';
part 'onehundredfortyfive_event.dart';
part 'onehundredfortyfive_state.dart';

/// A bloc that manages the state of a Onehundredfortyfive according to the event that is dispatched to it.
class OnehundredfortyfiveBloc
    extends Bloc<OnehundredfortyfiveEvent, OnehundredfortyfiveState> {
  OnehundredfortyfiveBloc(OnehundredfortyfiveState initialState)
      : super(initialState) {
    on<OnehundredfortyfiveInitialEvent>(_onInitialize);
  }

  _onInitialize(
    OnehundredfortyfiveInitialEvent event,
    Emitter<OnehundredfortyfiveState> emit,
  ) async {}
}
