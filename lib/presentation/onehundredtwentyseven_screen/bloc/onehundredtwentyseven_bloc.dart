import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/productcard11_item_model.dart';
import 'package:abdelhamed_s_application9/presentation/onehundredtwentyseven_screen/models/onehundredtwentyseven_model.dart';
part 'onehundredtwentyseven_event.dart';
part 'onehundredtwentyseven_state.dart';

/// A bloc that manages the state of a Onehundredtwentyseven according to the event that is dispatched to it.
class OnehundredtwentysevenBloc
    extends Bloc<OnehundredtwentysevenEvent, OnehundredtwentysevenState> {
  OnehundredtwentysevenBloc(OnehundredtwentysevenState initialState)
      : super(initialState) {
    on<OnehundredtwentysevenInitialEvent>(_onInitialize);
  }

  _onInitialize(
    OnehundredtwentysevenInitialEvent event,
    Emitter<OnehundredtwentysevenState> emit,
  ) async {
    emit(state.copyWith(
        onehundredtwentysevenModelObj:
            state.onehundredtwentysevenModelObj?.copyWith(
      productcard11ItemList: fillProductcard11ItemList(),
    )));
  }

  List<Productcard11ItemModel> fillProductcard11ItemList() {
    return [
      Productcard11ItemModel(
          widget: "#52156564320",
          time: "22/01/2023 - 09:30 PM",
          elNorStore: ImageConstant.imgRectangle3032x32,
          elNorStore1: "El Nor Store",
          productImage: ImageConstant.imgRectangle1648x48,
          productName: "Bomber Jackets",
          productPrice: "30.0 YER",
          productDiscountedPrice: "49.9 YER"),
      Productcard11ItemModel(
          widget: "#52156564320",
          time: "22/01/2023 - 09:30 PM",
          elNorStore: ImageConstant.imgRectangle3132x32,
          elNorStore1: "El Hoda Store",
          productImage: ImageConstant.imgRectangle165,
          productName: "Bomber Jackets"),
      Productcard11ItemModel(elNorStore: ImageConstant.imgRectangle165)
    ];
  }
}
