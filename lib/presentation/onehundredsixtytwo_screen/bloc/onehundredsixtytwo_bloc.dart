import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:country_pickers/country.dart';
import 'package:country_pickers/utils/utils.dart';
import 'package:abdelhamed_s_application9/presentation/onehundredsixtytwo_screen/models/onehundredsixtytwo_model.dart';
part 'onehundredsixtytwo_event.dart';
part 'onehundredsixtytwo_state.dart';

/// A bloc that manages the state of a Onehundredsixtytwo according to the event that is dispatched to it.
class OnehundredsixtytwoBloc
    extends Bloc<OnehundredsixtytwoEvent, OnehundredsixtytwoState> {
  OnehundredsixtytwoBloc(OnehundredsixtytwoState initialState)
      : super(initialState) {
    on<OnehundredsixtytwoInitialEvent>(_onInitialize);
    on<ChangeCountryEvent>(_changeCountry);
    on<ChangeDropDownEvent>(_changeDropDown);
    on<ChangeDropDown1Event>(_changeDropDown1);
    on<ChangeDropDown2Event>(_changeDropDown2);
    on<ChangeDropDown3Event>(_changeDropDown3);
    on<ChangePasswordVisibilityEvent>(_changePasswordVisibility);
    on<ChangePasswordVisibilityEvent1>(_changePasswordVisibility1);
    on<ChangeCheckBoxEvent>(_changeCheckBox);
  }

  _changeCountry(
    ChangeCountryEvent event,
    Emitter<OnehundredsixtytwoState> emit,
  ) {
    emit(state.copyWith(
      selectedCountry: event.value,
    ));
  }

  _changeDropDown(
    ChangeDropDownEvent event,
    Emitter<OnehundredsixtytwoState> emit,
  ) {
    emit(state.copyWith(
      selectedDropDownValue: event.value,
    ));
  }

  _changeDropDown1(
    ChangeDropDown1Event event,
    Emitter<OnehundredsixtytwoState> emit,
  ) {
    emit(state.copyWith(
      selectedDropDownValue1: event.value,
    ));
  }

  _changeDropDown2(
    ChangeDropDown2Event event,
    Emitter<OnehundredsixtytwoState> emit,
  ) {
    emit(state.copyWith(
      selectedDropDownValue2: event.value,
    ));
  }

  _changeDropDown3(
    ChangeDropDown3Event event,
    Emitter<OnehundredsixtytwoState> emit,
  ) {
    emit(state.copyWith(
      selectedDropDownValue3: event.value,
    ));
  }

  _changePasswordVisibility(
    ChangePasswordVisibilityEvent event,
    Emitter<OnehundredsixtytwoState> emit,
  ) {
    emit(state.copyWith(
      isShowPassword: event.value,
    ));
  }

  _changePasswordVisibility1(
    ChangePasswordVisibilityEvent1 event,
    Emitter<OnehundredsixtytwoState> emit,
  ) {
    emit(state.copyWith(
      isShowPassword1: event.value,
    ));
  }

  _changeCheckBox(
    ChangeCheckBoxEvent event,
    Emitter<OnehundredsixtytwoState> emit,
  ) {
    emit(state.copyWith(
      checkmarksquareOne: event.value,
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
    OnehundredsixtytwoInitialEvent event,
    Emitter<OnehundredsixtytwoState> emit,
  ) async {
    emit(state.copyWith(
      nameController: TextEditingController(),
      phoneNumberController: TextEditingController(),
      passwordController: TextEditingController(),
      confirmpasswordController: TextEditingController(),
      isShowPassword: true,
      isShowPassword1: true,
      checkmarksquareOne: false,
    ));
    emit(state.copyWith(
        onehundredsixtytwoModelObj: state.onehundredsixtytwoModelObj?.copyWith(
      dropdownItemList: fillDropdownItemList(),
      dropdownItemList1: fillDropdownItemList1(),
      dropdownItemList2: fillDropdownItemList2(),
      dropdownItemList3: fillDropdownItemList3(),
    )));
  }
}
