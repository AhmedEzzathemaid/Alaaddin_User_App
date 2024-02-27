import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:abdelhamed_s_application9/presentation/onehundredeleven_screen/models/onehundredeleven_model.dart';
part 'onehundredeleven_event.dart';
part 'onehundredeleven_state.dart';

/// A bloc that manages the state of a Onehundredeleven according to the event that is dispatched to it.
class OnehundredelevenBloc
    extends Bloc<OnehundredelevenEvent, OnehundredelevenState> {
  OnehundredelevenBloc(OnehundredelevenState initialState)
      : super(initialState) {
    on<OnehundredelevenInitialEvent>(_onInitialize);
  }

  _onInitialize(
    OnehundredelevenInitialEvent event,
    Emitter<OnehundredelevenState> emit,
  ) async {
    emit(state.copyWith(
      searchController: TextEditingController(),
    ));
  }
}
