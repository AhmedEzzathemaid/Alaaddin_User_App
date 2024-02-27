import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:abdelhamed_s_application9/presentation/fourteen_bottomsheet/models/fourteen_model.dart';
part 'fourteen_event.dart';
part 'fourteen_state.dart';

/// A bloc that manages the state of a Fourteen according to the event that is dispatched to it.
class FourteenBloc extends Bloc<FourteenEvent, FourteenState> {
  FourteenBloc(FourteenState initialState) : super(initialState) {
    on<FourteenInitialEvent>(_onInitialize);
  }

  _onInitialize(
    FourteenInitialEvent event,
    Emitter<FourteenState> emit,
  ) async {}
}
