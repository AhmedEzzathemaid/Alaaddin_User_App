import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:country_pickers/country.dart';
import 'package:country_pickers/utils/utils.dart';
import 'package:abdelhamed_s_application9/presentation/eleven_screen/models/eleven_model.dart';
part 'eleven_event.dart';
part 'eleven_state.dart';

/// A bloc that manages the state of a Eleven according to the event that is dispatched to it.
class ElevenBloc extends Bloc<ElevenEvent, ElevenState> {
  ElevenBloc(ElevenState initialState) : super(initialState) {
    on<ElevenInitialEvent>(_onInitialize);
    on<ChangeDropDownEvent>(_changeDropDown);
    on<ChangeDropDown1Event>(_changeDropDown1);
    on<ChangeDropDown2Event>(_changeDropDown2);
    on<ChangeCountryEvent>(_changeCountry);
    on<ChangeCountry1Event>(_changeCountry1);
  }

  _changeDropDown(
    ChangeDropDownEvent event,
    Emitter<ElevenState> emit,
  ) {
    emit(state.copyWith(
      selectedDropDownValue: event.value,
    ));
  }

  _changeDropDown1(
    ChangeDropDown1Event event,
    Emitter<ElevenState> emit,
  ) {
    emit(state.copyWith(
      selectedDropDownValue1: event.value,
    ));
  }

  _changeDropDown2(
    ChangeDropDown2Event event,
    Emitter<ElevenState> emit,
  ) {
    emit(state.copyWith(
      selectedDropDownValue2: event.value,
    ));
  }

  _changeCountry(
    ChangeCountryEvent event,
    Emitter<ElevenState> emit,
  ) {
    emit(state.copyWith(
      selectedCountry: event.value,
    ));
  }

  _changeCountry1(
    ChangeCountry1Event event,
    Emitter<ElevenState> emit,
  ) {
    emit(state.copyWith(
      selectedCountry1: event.value,
    ));
  }

  List<SelectionPopupModel> fillDropdownItemList() {
    return [
      SelectionPopupModel(
        id: 1,
        title: "Item One",
        isSelected: true,
      ),
      SelectionPopupModel(
        id: 2,
        title: "Item Two",
      ),
      SelectionPopupModel(
        id: 3,
        title: "Item Three",
      )
    ];
  }

  List<SelectionPopupModel> fillDropdownItemList1() {
    return [
      SelectionPopupModel(
        id: 1,
        title: "Item One",
        isSelected: true,
      ),
      SelectionPopupModel(
        id: 2,
        title: "Item Two",
      ),
      SelectionPopupModel(
        id: 3,
        title: "Item Three",
      )
    ];
  }

  List<SelectionPopupModel> fillDropdownItemList2() {
    return [
      SelectionPopupModel(
        id: 1,
        title: "Item One",
        isSelected: true,
      ),
      SelectionPopupModel(
        id: 2,
        title: "Item Two",
      ),
      SelectionPopupModel(
        id: 3,
        title: "Item Three",
      )
    ];
  }

  _onInitialize(
    ElevenInitialEvent event,
    Emitter<ElevenState> emit,
  ) async {
    emit(state.copyWith(
      searchController: TextEditingController(),
      nameController: TextEditingController(),
      stController: TextEditingController(),
      sixteenController: TextEditingController(),
      frontofMcDonaldsController: TextEditingController(),
      phoneNumberController: TextEditingController(),
      phoneNumberController1: TextEditingController(),
    ));
    emit(state.copyWith(
        elevenModelObj: state.elevenModelObj?.copyWith(
      dropdownItemList: fillDropdownItemList(),
      dropdownItemList1: fillDropdownItemList1(),
      dropdownItemList2: fillDropdownItemList2(),
    )));
  }
}
