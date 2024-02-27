import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/productdetails3_item_model.dart';
import 'package:abdelhamed_s_application9/presentation/onehundrednine_screen/models/onehundrednine_model.dart';
part 'onehundrednine_event.dart';
part 'onehundrednine_state.dart';

/// A bloc that manages the state of a Onehundrednine according to the event that is dispatched to it.
class OnehundrednineBloc
    extends Bloc<OnehundrednineEvent, OnehundrednineState> {
  OnehundrednineBloc(OnehundrednineState initialState) : super(initialState) {
    on<OnehundrednineInitialEvent>(_onInitialize);
  }

  _onInitialize(
    OnehundrednineInitialEvent event,
    Emitter<OnehundrednineState> emit,
  ) async {
    emit(state.copyWith(
        onehundrednineModelObj: state.onehundrednineModelObj?.copyWith(
      productdetails3ItemList: fillProductdetails3ItemList(),
    )));
  }

  List<Productdetails3ItemModel> fillProductdetails3ItemList() {
    return [
      Productdetails3ItemModel(
          productImage: ImageConstant.imgRectangle1685x85,
          productName: "Bomber Jackets",
          productPrice: "30.0 YER",
          productDiscountedPrice: "49.9 YER",
          productColor: "Color: Black",
          productSize: "Size: L",
          productQuantity: "Qty:x1",
          userIcon: ImageConstant.imgUserOnsecondarycontainer,
          settingsIcon: ImageConstant.imgSettingsPrimary,
          moonIcon: ImageConstant.imgGroupOnsecondarycontainer,
          settingsIcon1: ImageConstant.imgSettingsOnsecondarycontainer),
      Productdetails3ItemModel(
          productImage: ImageConstant.imgRectangle163,
          productName: "Bomber Jackets",
          productColor: "Color: Black",
          productSize: "Size: L",
          productQuantity: "Qty:x1",
          moonIcon: ImageConstant.imgButtonOnsecondarycontainer)
    ];
  }
}
