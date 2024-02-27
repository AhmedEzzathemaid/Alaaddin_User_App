import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:abdelhamed_s_application9/presentation/onehundredtwentyeight_screen/models/onehundredtwentyeight_model.dart';
part 'onehundredtwentyeight_event.dart';
part 'onehundredtwentyeight_state.dart';

/// A bloc that manages the state of a Onehundredtwentyeight according to the event that is dispatched to it.
class OnehundredtwentyeightBloc
    extends Bloc<OnehundredtwentyeightEvent, OnehundredtwentyeightState> {
  OnehundredtwentyeightBloc(OnehundredtwentyeightState initialState)
      : super(initialState) {
    on<OnehundredtwentyeightInitialEvent>(_onInitialize);
  }

  _onInitialize(
    OnehundredtwentyeightInitialEvent event,
    Emitter<OnehundredtwentyeightState> emit,
  ) async {}
}
