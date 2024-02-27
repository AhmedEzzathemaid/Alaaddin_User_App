import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:abdelhamed_s_application9/presentation/twentysix_bottomsheet/models/twentysix_model.dart';
part 'twentysix_event.dart';
part 'twentysix_state.dart';

/// A bloc that manages the state of a Twentysix according to the event that is dispatched to it.
class TwentysixBloc extends Bloc<TwentysixEvent, TwentysixState> {
  TwentysixBloc(TwentysixState initialState) : super(initialState) {
    on<TwentysixInitialEvent>(_onInitialize);
    on<ChangeRadioButtonEvent>(_changeRadioButton);
  }

  _changeRadioButton(
    ChangeRadioButtonEvent event,
    Emitter<TwentysixState> emit,
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
    TwentysixInitialEvent event,
    Emitter<TwentysixState> emit,
  ) async {
    emit(state.copyWith(
      sortBy: "",
    ));
    emit(state.copyWith(
        twentysixModelObj: state.twentysixModelObj?.copyWith(
      radioList: fillRadioList(),
    )));
  }
}
