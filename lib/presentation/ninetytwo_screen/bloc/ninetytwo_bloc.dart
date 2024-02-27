import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/productdetails_item_model.dart';
import 'package:abdelhamed_s_application9/presentation/ninetytwo_screen/models/ninetytwo_model.dart';
part 'ninetytwo_event.dart';
part 'ninetytwo_state.dart';

/// A bloc that manages the state of a Ninetytwo according to the event that is dispatched to it.
class NinetytwoBloc extends Bloc<NinetytwoEvent, NinetytwoState> {
  NinetytwoBloc(NinetytwoState initialState) : super(initialState) {
    on<NinetytwoInitialEvent>(_onInitialize);
  }

  _onInitialize(
    NinetytwoInitialEvent event,
    Emitter<NinetytwoState> emit,
  ) async {
    emit(state.copyWith(
        ninetytwoModelObj: state.ninetytwoModelObj?.copyWith(
      productdetailsItemList: fillProductdetailsItemList(),
    )));
  }

  List<ProductdetailsItemModel> fillProductdetailsItemList() {
    return [
      ProductdetailsItemModel(
          productImage: ImageConstant.imgRectangle1685x85,
          productName: "Bomber Jackets",
          price1: "30.0 YER",
          price2: "49.9 YER",
          color: "Color: Black",
          size: "Size: L",
          quantity: "Qty:x1"),
      ProductdetailsItemModel(
          productImage: ImageConstant.imgRectangle163,
          productName: "Bomber Jackets",
          color: "Color: Black",
          size: "Size: L",
          quantity: "Qty:x1")
    ];
  }
}
