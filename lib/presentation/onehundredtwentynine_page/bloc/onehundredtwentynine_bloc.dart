import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:country_pickers/country.dart';
import 'package:country_pickers/utils/utils.dart';
import 'package:abdelhamed_s_application9/presentation/onehundredtwentynine_page/models/onehundredtwentynine_model.dart';
part 'onehundredtwentynine_event.dart';
part 'onehundredtwentynine_state.dart';

/// A bloc that manages the state of a Onehundredtwentynine according to the event that is dispatched to it.
class OnehundredtwentynineBloc
    extends Bloc<OnehundredtwentynineEvent, OnehundredtwentynineState> {
  OnehundredtwentynineBloc(OnehundredtwentynineState initialState)
      : super(initialState) {
    on<OnehundredtwentynineInitialEvent>(_onInitialize);
    on<ChangeCountryEvent>(_changeCountry);
    on<ChangeDropDownEvent>(_changeDropDown);
    on<ChangeDropDown1Event>(_changeDropDown1);
    on<ChangeDropDown2Event>(_changeDropDown2);
    on<ChangeDropDown3Event>(_changeDropDown3);
  }

  _changeCountry(
    ChangeCountryEvent event,
    Emitter<OnehundredtwentynineState> emit,
  ) {
    emit(state.copyWith(
      selectedCountry: event.value,
    ));
  }

  _changeDropDown(
    ChangeDropDownEvent event,
    Emitter<OnehundredtwentynineState> emit,
  ) {
    emit(state.copyWith(
      selectedDropDownValue: event.value,
    ));
  }

  _changeDropDown1(
    ChangeDropDown1Event event,
    Emitter<OnehundredtwentynineState> emit,
  ) {
    emit(state.copyWith(
      selectedDropDownValue1: event.value,
    ));
  }

  _changeDropDown2(
    ChangeDropDown2Event event,
    Emitter<OnehundredtwentynineState> emit,
  ) {
    emit(state.copyWith(
      selectedDropDownValue2: event.value,
    ));
  }

  _changeDropDown3(
    ChangeDropDown3Event event,
    Emitter<OnehundredtwentynineState> emit,
  ) {
    emit(state.copyWith(
      selectedDropDownValue3: event.value,
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

  List<SelectionPopupModel> fillDropdownItemList3() {
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
    OnehundredtwentynineInitialEvent event,
    Emitter<OnehundredtwentynineState> emit,
  ) async {
    emit(state.copyWith(
      nameController: TextEditingController(),
      phoneNumberController: TextEditingController(),
    ));
    emit(state.copyWith(
        onehundredtwentynineModelObj:
            state.onehundredtwentynineModelObj?.copyWith(
      dropdownItemList: fillDropdownItemList(),
      dropdownItemList1: fillDropdownItemList1(),
      dropdownItemList2: fillDropdownItemList2(),
      dropdownItemList3: fillDropdownItemList3(),
    )));
  }
}
