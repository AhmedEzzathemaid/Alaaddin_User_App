import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:abdelhamed_s_application9/presentation/onehundredfiftythree_screen/models/onehundredfiftythree_model.dart';
part 'onehundredfiftythree_event.dart';
part 'onehundredfiftythree_state.dart';

/// A bloc that manages the state of a Onehundredfiftythree according to the event that is dispatched to it.
class OnehundredfiftythreeBloc
    extends Bloc<OnehundredfiftythreeEvent, OnehundredfiftythreeState> {
  OnehundredfiftythreeBloc(OnehundredfiftythreeState initialState)
      : super(initialState) {
    on<OnehundredfiftythreeInitialEvent>(_onInitialize);
  }

  _onInitialize(
    OnehundredfiftythreeInitialEvent event,
    Emitter<OnehundredfiftythreeState> emit,
  ) async {
    emit(state.copyWith(
      loremIpsumOneController: TextEditingController(),
      loremIpsumOneController1: TextEditingController(),
      writeHereController: TextEditingController(),
    ));
  }
}
