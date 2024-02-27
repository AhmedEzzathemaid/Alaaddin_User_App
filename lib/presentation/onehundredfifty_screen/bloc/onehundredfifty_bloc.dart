import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:abdelhamed_s_application9/presentation/onehundredfifty_screen/models/onehundredfifty_model.dart';
part 'onehundredfifty_event.dart';
part 'onehundredfifty_state.dart';

/// A bloc that manages the state of a Onehundredfifty according to the event that is dispatched to it.
class OnehundredfiftyBloc
    extends Bloc<OnehundredfiftyEvent, OnehundredfiftyState> {
  OnehundredfiftyBloc(OnehundredfiftyState initialState) : super(initialState) {
    on<OnehundredfiftyInitialEvent>(_onInitialize);
  }

  _onInitialize(
    OnehundredfiftyInitialEvent event,
    Emitter<OnehundredfiftyState> emit,
  ) async {}
}
