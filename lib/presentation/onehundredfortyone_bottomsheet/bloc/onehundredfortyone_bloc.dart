import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:abdelhamed_s_application9/presentation/onehundredfortyone_bottomsheet/models/onehundredfortyone_model.dart';
part 'onehundredfortyone_event.dart';
part 'onehundredfortyone_state.dart';

/// A bloc that manages the state of a Onehundredfortyone according to the event that is dispatched to it.
class OnehundredfortyoneBloc
    extends Bloc<OnehundredfortyoneEvent, OnehundredfortyoneState> {
  OnehundredfortyoneBloc(OnehundredfortyoneState initialState)
      : super(initialState) {
    on<OnehundredfortyoneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    OnehundredfortyoneInitialEvent event,
    Emitter<OnehundredfortyoneState> emit,
  ) async {}
}
