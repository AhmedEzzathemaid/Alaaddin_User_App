import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:abdelhamed_s_application9/presentation/onehundredfiftysix_screen/models/onehundredfiftysix_model.dart';
part 'onehundredfiftysix_event.dart';
part 'onehundredfiftysix_state.dart';

/// A bloc that manages the state of a Onehundredfiftysix according to the event that is dispatched to it.
class OnehundredfiftysixBloc
    extends Bloc<OnehundredfiftysixEvent, OnehundredfiftysixState> {
  OnehundredfiftysixBloc(OnehundredfiftysixState initialState)
      : super(initialState) {
    on<OnehundredfiftysixInitialEvent>(_onInitialize);
  }

  _onInitialize(
    OnehundredfiftysixInitialEvent event,
    Emitter<OnehundredfiftysixState> emit,
  ) async {
    emit(state.copyWith(
      loremIpsumOneController: TextEditingController(),
      loremIpsumOneController1: TextEditingController(),
    ));
  }
}
