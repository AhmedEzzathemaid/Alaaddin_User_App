import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:country_pickers/country.dart';
import 'package:country_pickers/utils/utils.dart';
import 'package:abdelhamed_s_application9/presentation/onehundredfortynine_screen/models/onehundredfortynine_model.dart';
part 'onehundredfortynine_event.dart';
part 'onehundredfortynine_state.dart';

/// A bloc that manages the state of a Onehundredfortynine according to the event that is dispatched to it.
class OnehundredfortynineBloc
    extends Bloc<OnehundredfortynineEvent, OnehundredfortynineState> {
  OnehundredfortynineBloc(OnehundredfortynineState initialState)
      : super(initialState) {
    on<OnehundredfortynineInitialEvent>(_onInitialize);
    on<ChangeCountryEvent>(_changeCountry);
  }

  _changeCountry(
    ChangeCountryEvent event,
    Emitter<OnehundredfortynineState> emit,
  ) {
    emit(state.copyWith(
      selectedCountry: event.value,
    ));
  }

  _onInitialize(
    OnehundredfortynineInitialEvent event,
    Emitter<OnehundredfortynineState> emit,
  ) async {
    emit(state.copyWith(
      nameController: TextEditingController(),
      phoneNumberController: TextEditingController(),
      emailController: TextEditingController(),
      writeherevalueController: TextEditingController(),
    ));
  }
}
