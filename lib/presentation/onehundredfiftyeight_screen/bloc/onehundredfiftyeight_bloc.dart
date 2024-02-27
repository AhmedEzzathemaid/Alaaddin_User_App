import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:country_pickers/country.dart';
import 'package:country_pickers/utils/utils.dart';
import 'package:abdelhamed_s_application9/presentation/onehundredfiftyeight_screen/models/onehundredfiftyeight_model.dart';
part 'onehundredfiftyeight_event.dart';
part 'onehundredfiftyeight_state.dart';

/// A bloc that manages the state of a Onehundredfiftyeight according to the event that is dispatched to it.
class OnehundredfiftyeightBloc
    extends Bloc<OnehundredfiftyeightEvent, OnehundredfiftyeightState> {
  OnehundredfiftyeightBloc(OnehundredfiftyeightState initialState)
      : super(initialState) {
    on<OnehundredfiftyeightInitialEvent>(_onInitialize);
    on<ChangeCountryEvent>(_changeCountry);
    on<ChangePasswordVisibilityEvent>(_changePasswordVisibility);
    on<ChangeCheckBoxEvent>(_changeCheckBox);
  }

  _changeCountry(
    ChangeCountryEvent event,
    Emitter<OnehundredfiftyeightState> emit,
  ) {
    emit(state.copyWith(
      selectedCountry: event.value,
    ));
  }

  _changePasswordVisibility(
    ChangePasswordVisibilityEvent event,
    Emitter<OnehundredfiftyeightState> emit,
  ) {
    emit(state.copyWith(
      isShowPassword: event.value,
    ));
  }

  _changeCheckBox(
    ChangeCheckBoxEvent event,
    Emitter<OnehundredfiftyeightState> emit,
  ) {
    emit(state.copyWith(
      rememberMe: event.value,
    ));
  }

  _onInitialize(
    OnehundredfiftyeightInitialEvent event,
    Emitter<OnehundredfiftyeightState> emit,
  ) async {
    emit(state.copyWith(
      phoneNumberController: TextEditingController(),
      passwordController: TextEditingController(),
      isShowPassword: true,
      rememberMe: false,
    ));
  }
}
