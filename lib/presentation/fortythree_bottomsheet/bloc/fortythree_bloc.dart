import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:abdelhamed_s_application9/presentation/fortythree_bottomsheet/models/fortythree_model.dart';
part 'fortythree_event.dart';
part 'fortythree_state.dart';

/// A bloc that manages the state of a Fortythree according to the event that is dispatched to it.
class FortythreeBloc extends Bloc<FortythreeEvent, FortythreeState> {
  FortythreeBloc(FortythreeState initialState) : super(initialState) {
    on<FortythreeInitialEvent>(_onInitialize);
    on<ChangeRadioButtonEvent>(_changeRadioButton);
  }

  _changeRadioButton(
    ChangeRadioButtonEvent event,
    Emitter<FortythreeState> emit,
  ) {
    emit(state.copyWith(
      sortBy: event.value,
    ));
  }

  List<String> fillRadioList() {
    return [
      "lbl_new_arraival",
      "lbl_most_watched",
      "lbl_most_rated",
      "lbl_least_rated",
      "lbl_lowest_price",
      "lbl_highest_price"
    ];
  }

  _onInitialize(
    FortythreeInitialEvent event,
    Emitter<FortythreeState> emit,
  ) async {
    emit(state.copyWith(
      sortBy: "",
    ));
    emit(state.copyWith(
        fortythreeModelObj: state.fortythreeModelObj?.copyWith(
      radioList: fillRadioList(),
    )));
  }
}
