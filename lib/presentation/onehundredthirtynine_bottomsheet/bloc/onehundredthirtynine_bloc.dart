import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:country_pickers/country.dart';
import 'package:country_pickers/utils/utils.dart';
import 'package:abdelhamed_s_application9/presentation/onehundredthirtynine_bottomsheet/models/onehundredthirtynine_model.dart';
part 'onehundredthirtynine_event.dart';
part 'onehundredthirtynine_state.dart';

/// A bloc that manages the state of a Onehundredthirtynine according to the event that is dispatched to it.
class OnehundredthirtynineBloc
    extends Bloc<OnehundredthirtynineEvent, OnehundredthirtynineState> {
  OnehundredthirtynineBloc(OnehundredthirtynineState initialState)
      : super(initialState) {
    on<OnehundredthirtynineInitialEvent>(_onInitialize);
    on<ChangeCountryEvent>(_changeCountry);
  }

  _changeCountry(
    ChangeCountryEvent event,
    Emitter<OnehundredthirtynineState> emit,
  ) {
    emit(state.copyWith(
      selectedCountry: event.value,
    ));
  }

  _onInitialize(
    OnehundredthirtynineInitialEvent event,
    Emitter<OnehundredthirtynineState> emit,
  ) async {
    emit(state.copyWith(
      phoneNumberController: TextEditingController(),
      amountController: TextEditingController(),
    ));
  }
}
