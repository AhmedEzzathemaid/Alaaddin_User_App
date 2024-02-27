import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:abdelhamed_s_application9/presentation/onehundredsixtyseven_page/models/onehundredsixtyseven_model.dart';
part 'onehundredsixtyseven_event.dart';
part 'onehundredsixtyseven_state.dart';

/// A bloc that manages the state of a Onehundredsixtyseven according to the event that is dispatched to it.
class OnehundredsixtysevenBloc
    extends Bloc<OnehundredsixtysevenEvent, OnehundredsixtysevenState> {
  OnehundredsixtysevenBloc(OnehundredsixtysevenState initialState)
      : super(initialState) {
    on<OnehundredsixtysevenInitialEvent>(_onInitialize);
  }

  _onInitialize(
    OnehundredsixtysevenInitialEvent event,
    Emitter<OnehundredsixtysevenState> emit,
  ) async {}
}
