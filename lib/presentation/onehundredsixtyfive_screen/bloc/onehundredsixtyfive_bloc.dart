import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:abdelhamed_s_application9/presentation/onehundredsixtyfive_screen/models/onehundredsixtyfive_model.dart';
part 'onehundredsixtyfive_event.dart';
part 'onehundredsixtyfive_state.dart';

/// A bloc that manages the state of a Onehundredsixtyfive according to the event that is dispatched to it.
class OnehundredsixtyfiveBloc
    extends Bloc<OnehundredsixtyfiveEvent, OnehundredsixtyfiveState> {
  OnehundredsixtyfiveBloc(OnehundredsixtyfiveState initialState)
      : super(initialState) {
    on<OnehundredsixtyfiveInitialEvent>(_onInitialize);
  }

  _onInitialize(
    OnehundredsixtyfiveInitialEvent event,
    Emitter<OnehundredsixtyfiveState> emit,
  ) async {}
}
