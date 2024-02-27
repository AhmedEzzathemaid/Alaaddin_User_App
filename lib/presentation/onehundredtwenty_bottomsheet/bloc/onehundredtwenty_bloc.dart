import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:abdelhamed_s_application9/presentation/onehundredtwenty_bottomsheet/models/onehundredtwenty_model.dart';
part 'onehundredtwenty_event.dart';
part 'onehundredtwenty_state.dart';

/// A bloc that manages the state of a Onehundredtwenty according to the event that is dispatched to it.
class OnehundredtwentyBloc
    extends Bloc<OnehundredtwentyEvent, OnehundredtwentyState> {
  OnehundredtwentyBloc(OnehundredtwentyState initialState)
      : super(initialState) {
    on<OnehundredtwentyInitialEvent>(_onInitialize);
  }

  _onInitialize(
    OnehundredtwentyInitialEvent event,
    Emitter<OnehundredtwentyState> emit,
  ) async {
    emit(state.copyWith(
      commentController: TextEditingController(),
    ));
  }
}
