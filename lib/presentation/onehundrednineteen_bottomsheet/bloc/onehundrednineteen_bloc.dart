import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:abdelhamed_s_application9/presentation/onehundrednineteen_bottomsheet/models/onehundrednineteen_model.dart';
part 'onehundrednineteen_event.dart';
part 'onehundrednineteen_state.dart';

/// A bloc that manages the state of a Onehundrednineteen according to the event that is dispatched to it.
class OnehundrednineteenBloc
    extends Bloc<OnehundrednineteenEvent, OnehundrednineteenState> {
  OnehundrednineteenBloc(OnehundrednineteenState initialState)
      : super(initialState) {
    on<OnehundrednineteenInitialEvent>(_onInitialize);
  }

  _onInitialize(
    OnehundrednineteenInitialEvent event,
    Emitter<OnehundrednineteenState> emit,
  ) async {
    emit(state.copyWith(
      commentController: TextEditingController(),
    ));
  }
}
