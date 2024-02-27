import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:abdelhamed_s_application9/presentation/onehundredeighteen_bottomsheet/models/onehundredeighteen_model.dart';
part 'onehundredeighteen_event.dart';
part 'onehundredeighteen_state.dart';

/// A bloc that manages the state of a Onehundredeighteen according to the event that is dispatched to it.
class OnehundredeighteenBloc
    extends Bloc<OnehundredeighteenEvent, OnehundredeighteenState> {
  OnehundredeighteenBloc(OnehundredeighteenState initialState)
      : super(initialState) {
    on<OnehundredeighteenInitialEvent>(_onInitialize);
  }

  _onInitialize(
    OnehundredeighteenInitialEvent event,
    Emitter<OnehundredeighteenState> emit,
  ) async {
    emit(state.copyWith(
      commentController: TextEditingController(),
    ));
  }
}
