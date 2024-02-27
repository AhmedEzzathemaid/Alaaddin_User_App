import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:abdelhamed_s_application9/presentation/twentynine_bottomsheet/models/twentynine_model.dart';
part 'twentynine_event.dart';
part 'twentynine_state.dart';

/// A bloc that manages the state of a Twentynine according to the event that is dispatched to it.
class TwentynineBloc extends Bloc<TwentynineEvent, TwentynineState> {
  TwentynineBloc(TwentynineState initialState) : super(initialState) {
    on<TwentynineInitialEvent>(_onInitialize);
    on<ChangeRadioButtonEvent>(_changeRadioButton);
  }

  _changeRadioButton(
    ChangeRadioButtonEvent event,
    Emitter<TwentynineState> emit,
  ) {
    emit(state.copyWith(
      sortBy: event.value,
    ));
  }

  List<String> fillRadioList() {
    return [
      "lbl_most_watched",
      "lbl_most_rated",
      "lbl_least_rated",
      "lbl_lowest_price",
      "lbl_highest_price"
    ];
  }

  _onInitialize(
    TwentynineInitialEvent event,
    Emitter<TwentynineState> emit,
  ) async {
    emit(state.copyWith(
      sortBy: "",
    ));
    emit(state.copyWith(
        twentynineModelObj: state.twentynineModelObj?.copyWith(
      radioList: fillRadioList(),
    )));
  }
}
