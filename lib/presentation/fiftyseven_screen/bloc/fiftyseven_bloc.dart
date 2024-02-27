import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/productcard1_item_model.dart';
import 'package:abdelhamed_s_application9/presentation/fiftyseven_screen/models/fiftyseven_model.dart';
part 'fiftyseven_event.dart';
part 'fiftyseven_state.dart';

/// A bloc that manages the state of a Fiftyseven according to the event that is dispatched to it.
class FiftysevenBloc extends Bloc<FiftysevenEvent, FiftysevenState> {
  FiftysevenBloc(FiftysevenState initialState) : super(initialState) {
    on<FiftysevenInitialEvent>(_onInitialize);
    on<ChangeSwitchEvent>(_changeSwitch);
  }

  _changeSwitch(
    ChangeSwitchEvent event,
    Emitter<FiftysevenState> emit,
  ) {
    emit(state.copyWith(
      isSelectedSwitch: event.value,
    ));
  }

  List<Productcard1ItemModel> fillProductcard1ItemList() {
    return [
      Productcard1ItemModel(
          image: ImageConstant.imgRectangle16111x111,
          title: "Bomber Jackets",
          price1: "30.0 YER",
          price2: "49.9 YER"),
      Productcard1ItemModel(
          image: ImageConstant.imgRectangle162, title: "Bomber Jackets")
    ];
  }

  _onInitialize(
    FiftysevenInitialEvent event,
    Emitter<FiftysevenState> emit,
  ) async {
    emit(state.copyWith(
      isSelectedSwitch: false,
    ));
    emit(state.copyWith(
        fiftysevenModelObj: state.fiftysevenModelObj?.copyWith(
      productcard1ItemList: fillProductcard1ItemList(),
    )));
  }
}
