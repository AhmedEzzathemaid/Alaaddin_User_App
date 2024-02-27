import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:abdelhamed_s_application9/presentation/onehundredfiftyfive_screen/models/onehundredfiftyfive_model.dart';
part 'onehundredfiftyfive_event.dart';
part 'onehundredfiftyfive_state.dart';

/// A bloc that manages the state of a Onehundredfiftyfive according to the event that is dispatched to it.
class OnehundredfiftyfiveBloc
    extends Bloc<OnehundredfiftyfiveEvent, OnehundredfiftyfiveState> {
  OnehundredfiftyfiveBloc(OnehundredfiftyfiveState initialState)
      : super(initialState) {
    on<OnehundredfiftyfiveInitialEvent>(_onInitialize);
  }

  _onInitialize(
    OnehundredfiftyfiveInitialEvent event,
    Emitter<OnehundredfiftyfiveState> emit,
  ) async {
    emit(state.copyWith(
      loremIpsumOneController: TextEditingController(),
      loremIpsumOneController1: TextEditingController(),
      writeHereController: TextEditingController(),
    ));
  }
}
