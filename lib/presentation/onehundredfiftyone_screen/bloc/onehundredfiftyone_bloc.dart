import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:abdelhamed_s_application9/presentation/onehundredfiftyone_screen/models/onehundredfiftyone_model.dart';
part 'onehundredfiftyone_event.dart';
part 'onehundredfiftyone_state.dart';

/// A bloc that manages the state of a Onehundredfiftyone according to the event that is dispatched to it.
class OnehundredfiftyoneBloc
    extends Bloc<OnehundredfiftyoneEvent, OnehundredfiftyoneState> {
  OnehundredfiftyoneBloc(OnehundredfiftyoneState initialState)
      : super(initialState) {
    on<OnehundredfiftyoneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    OnehundredfiftyoneInitialEvent event,
    Emitter<OnehundredfiftyoneState> emit,
  ) async {}
}
