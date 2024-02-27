import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:abdelhamed_s_application9/presentation/onehundredtwentysix_page/models/onehundredtwentysix_model.dart';
part 'onehundredtwentysix_event.dart';
part 'onehundredtwentysix_state.dart';

/// A bloc that manages the state of a Onehundredtwentysix according to the event that is dispatched to it.
class OnehundredtwentysixBloc
    extends Bloc<OnehundredtwentysixEvent, OnehundredtwentysixState> {
  OnehundredtwentysixBloc(OnehundredtwentysixState initialState)
      : super(initialState) {
    on<OnehundredtwentysixInitialEvent>(_onInitialize);
    on<ChangeRadioButtonEvent>(_changeRadioButton);
  }

  _changeRadioButton(
    ChangeRadioButtonEvent event,
    Emitter<OnehundredtwentysixState> emit,
  ) {
    emit(state.copyWith(
      language: event.value,
    ));
  }

  List<String> fillRadioList() {
    return ["lbl_english", "lbl_arabic"];
  }

  _onInitialize(
    OnehundredtwentysixInitialEvent event,
    Emitter<OnehundredtwentysixState> emit,
  ) async {
    emit(state.copyWith(
      titleController: TextEditingController(),
      titleController1: TextEditingController(),
      titleController2: TextEditingController(),
      addressController: TextEditingController(),
      myaddressesvalueController: TextEditingController(),
      titleController3: TextEditingController(),
      termAndConditionController: TextEditingController(),
      titleController4: TextEditingController(),
      language: "",
    ));
    emit(state.copyWith(
        onehundredtwentysixModelObj:
            state.onehundredtwentysixModelObj?.copyWith(
      radioList: fillRadioList(),
    )));
  }
}
