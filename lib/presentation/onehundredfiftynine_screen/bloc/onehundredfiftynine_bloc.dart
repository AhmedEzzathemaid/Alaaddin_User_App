import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:country_pickers/country.dart';
import 'package:country_pickers/utils/utils.dart';
import 'package:abdelhamed_s_application9/presentation/onehundredfiftynine_screen/models/onehundredfiftynine_model.dart';
part 'onehundredfiftynine_event.dart';
part 'onehundredfiftynine_state.dart';

/// A bloc that manages the state of a Onehundredfiftynine according to the event that is dispatched to it.
class OnehundredfiftynineBloc
    extends Bloc<OnehundredfiftynineEvent, OnehundredfiftynineState> {
  OnehundredfiftynineBloc(OnehundredfiftynineState initialState)
      : super(initialState) {
    on<OnehundredfiftynineInitialEvent>(_onInitialize);
    on<ChangeCountryEvent>(_changeCountry);
  }

  _changeCountry(
    ChangeCountryEvent event,
    Emitter<OnehundredfiftynineState> emit,
  ) {
    emit(state.copyWith(
      selectedCountry: event.value,
    ));
  }

  _onInitialize(
    OnehundredfiftynineInitialEvent event,
    Emitter<OnehundredfiftynineState> emit,
  ) async {
    emit(state.copyWith(
      phoneNumberController: TextEditingController(),
    ));
  }
}
