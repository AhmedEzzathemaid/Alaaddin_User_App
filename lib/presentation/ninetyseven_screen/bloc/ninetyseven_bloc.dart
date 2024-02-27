import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/productdetails1_item_model.dart';
import 'package:abdelhamed_s_application9/presentation/ninetyseven_screen/models/ninetyseven_model.dart';
part 'ninetyseven_event.dart';
part 'ninetyseven_state.dart';

/// A bloc that manages the state of a Ninetyseven according to the event that is dispatched to it.
class NinetysevenBloc extends Bloc<NinetysevenEvent, NinetysevenState> {
  NinetysevenBloc(NinetysevenState initialState) : super(initialState) {
    on<NinetysevenInitialEvent>(_onInitialize);
  }

  _onInitialize(
    NinetysevenInitialEvent event,
    Emitter<NinetysevenState> emit,
  ) async {
    emit(state.copyWith(
        ninetysevenModelObj: state.ninetysevenModelObj?.copyWith(
      productdetails1ItemList: fillProductdetails1ItemList(),
    )));
  }

  List<Productdetails1ItemModel> fillProductdetails1ItemList() {
    return [
      Productdetails1ItemModel(
          productImage: ImageConstant.imgRectangle1685x85,
          productName: "Bomber Jackets",
          price1: "30.0 YER",
          price2: "49.9 YER",
          color: "Color: Black",
          size: "Size: L",
          quantity: "Qty:x1"),
      Productdetails1ItemModel(
          productImage: ImageConstant.imgRectangle163,
          productName: "Bomber Jackets",
          color: "Color: Black",
          size: "Size: L",
          quantity: "Qty:x1")
    ];
  }
}
