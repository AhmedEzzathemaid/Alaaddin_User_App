import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/seventy_item_model.dart';
import '../models/s16_item_model.dart';
import '../models/productlist8_item_model.dart';
import 'package:abdelhamed_s_application9/presentation/fortyfour_screen/models/fortyfour_model.dart';
part 'fortyfour_event.dart';
part 'fortyfour_state.dart';

/// A bloc that manages the state of a Fortyfour according to the event that is dispatched to it.
class FortyfourBloc extends Bloc<FortyfourEvent, FortyfourState> {
  FortyfourBloc(FortyfourState initialState) : super(initialState) {
    on<FortyfourInitialEvent>(_onInitialize);
    on<ChangeSwitchEvent>(_changeSwitch);
    on<ChangeDropDownEvent>(_changeDropDown);
    on<UpdateChipViewEvent>(_updateChipView);
    on<ChangeSwitch1Event>(_changeSwitch1);
  }

  _changeSwitch(
    ChangeSwitchEvent event,
    Emitter<FortyfourState> emit,
  ) {
    emit(state.copyWith(
      isSelectedSwitch: event.value,
    ));
  }

  _changeDropDown(
    ChangeDropDownEvent event,
    Emitter<FortyfourState> emit,
  ) {
    emit(state.copyWith(
      selectedDropDownValue: event.value,
    ));
  }

  _updateChipView(
    UpdateChipViewEvent event,
    Emitter<FortyfourState> emit,
  ) {
    List<S16ItemModel> newList =
        List<S16ItemModel>.from(state.fortyfourModelObj!.s16ItemList);
    newList[event.index] = newList[event.index].copyWith(
      isSelected: event.isSelected,
    );
    emit(state.copyWith(
        fortyfourModelObj:
            state.fortyfourModelObj?.copyWith(s16ItemList: newList)));
  }

  _changeSwitch1(
    ChangeSwitch1Event event,
    Emitter<FortyfourState> emit,
  ) {
    emit(state.copyWith(
      isSelectedSwitch1: event.value,
    ));
  }

  List<SeventyItemModel> fillSeventyItemList() {
    return List.generate(2, (index) => SeventyItemModel());
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

  List<S16ItemModel> fillS16ItemList() {
    return List.generate(5, (index) => S16ItemModel());
  }

  List<Productlist8ItemModel> fillProductlist8ItemList() {
    return [
      Productlist8ItemModel(
          productImage: ImageConstant.imgRectangle224263,
          productTitle: "30%",
          categoryTitle: "Bomber Jackets",
          price1: "30.0 YER",
          price2: "49.9YER"),
      Productlist8ItemModel(
          productImage: ImageConstant.imgRectangle224264,
          productTitle: "20%",
          categoryTitle: "Bomber Jackets",
          price1: "30.0 YER",
          price2: "49.9YER"),
      Productlist8ItemModel(
          productImage: ImageConstant.imgRectangle224263,
          productTitle: "30%",
          categoryTitle: "Bomber Jackets",
          price1: "30.0 YER",
          price2: "49.9YER")
    ];
  }

  _onInitialize(
    FortyfourInitialEvent event,
    Emitter<FortyfourState> emit,
  ) async {
    emit(state.copyWith(
      characteristicsController: TextEditingController(),
      ratingsreviewsController: TextEditingController(),
      sliderIndex: 0,
      isSelectedSwitch: false,
      isSelectedSwitch1: false,
    ));
    emit(state.copyWith(
        fortyfourModelObj: state.fortyfourModelObj?.copyWith(
      seventyItemList: fillSeventyItemList(),
      dropdownItemList: fillDropdownItemList(),
      s16ItemList: fillS16ItemList(),
      productlist8ItemList: fillProductlist8ItemList(),
    )));
  }
}
