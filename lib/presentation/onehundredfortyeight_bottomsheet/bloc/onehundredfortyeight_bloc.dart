import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:abdelhamed_s_application9/presentation/onehundredfortyeight_bottomsheet/models/onehundredfortyeight_model.dart';
part 'onehundredfortyeight_event.dart';
part 'onehundredfortyeight_state.dart';

/// A bloc that manages the state of a Onehundredfortyeight according to the event that is dispatched to it.
class OnehundredfortyeightBloc
    extends Bloc<OnehundredfortyeightEvent, OnehundredfortyeightState> {
  OnehundredfortyeightBloc(OnehundredfortyeightState initialState)
      : super(initialState) {
    on<OnehundredfortyeightInitialEvent>(_onInitialize);
  }

  _onInitialize(
    OnehundredfortyeightInitialEvent event,
    Emitter<OnehundredfortyeightState> emit,
  ) async {}
}
