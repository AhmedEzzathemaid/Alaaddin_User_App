import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:abdelhamed_s_application9/presentation/onehundredforty_bottomsheet/models/onehundredforty_model.dart';
part 'onehundredforty_event.dart';
part 'onehundredforty_state.dart';

/// A bloc that manages the state of a Onehundredforty according to the event that is dispatched to it.
class OnehundredfortyBloc
    extends Bloc<OnehundredfortyEvent, OnehundredfortyState> {
  OnehundredfortyBloc(OnehundredfortyState initialState) : super(initialState) {
    on<OnehundredfortyInitialEvent>(_onInitialize);
  }

  _onInitialize(
    OnehundredfortyInitialEvent event,
    Emitter<OnehundredfortyState> emit,
  ) async {}
}
