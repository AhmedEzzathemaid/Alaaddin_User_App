import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:abdelhamed_s_application9/presentation/onehundredthirtythree_bottomsheet/models/onehundredthirtythree_model.dart';
part 'onehundredthirtythree_event.dart';
part 'onehundredthirtythree_state.dart';

/// A bloc that manages the state of a Onehundredthirtythree according to the event that is dispatched to it.
class OnehundredthirtythreeBloc
    extends Bloc<OnehundredthirtythreeEvent, OnehundredthirtythreeState> {
  OnehundredthirtythreeBloc(OnehundredthirtythreeState initialState)
      : super(initialState) {
    on<OnehundredthirtythreeInitialEvent>(_onInitialize);
  }

  _onInitialize(
    OnehundredthirtythreeInitialEvent event,
    Emitter<OnehundredthirtythreeState> emit,
  ) async {}
}
