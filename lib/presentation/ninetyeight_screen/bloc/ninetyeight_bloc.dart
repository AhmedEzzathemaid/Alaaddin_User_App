import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/productdetails2_item_model.dart';
import 'package:abdelhamed_s_application9/presentation/ninetyeight_screen/models/ninetyeight_model.dart';
part 'ninetyeight_event.dart';
part 'ninetyeight_state.dart';

/// A bloc that manages the state of a Ninetyeight according to the event that is dispatched to it.
class NinetyeightBloc extends Bloc<NinetyeightEvent, NinetyeightState> {
  NinetyeightBloc(NinetyeightState initialState) : super(initialState) {
    on<NinetyeightInitialEvent>(_onInitialize);
  }

  _onInitialize(
    NinetyeightInitialEvent event,
    Emitter<NinetyeightState> emit,
  ) async {
    emit(state.copyWith(
        ninetyeightModelObj: state.ninetyeightModelObj?.copyWith(
      productdetails2ItemList: fillProductdetails2ItemList(),
    )));
  }

  List<Productdetails2ItemModel> fillProductdetails2ItemList() {
    return [
      Productdetails2ItemModel(
          productImage: ImageConstant.imgRectangle1685x85,
          productName: "Bomber Jackets",
          price1: "30.0 YER",
          price2: "49.9 YER",
          color: "Color: Black",
          size: "Size: L",
          quantity: "Qty:x1"),
      Productdetails2ItemModel(
          productImage: ImageConstant.imgRectangle163,
          productName: "Bomber Jackets",
          color: "Color: Black",
          size: "Size: L",
          quantity: "Qty:x1")
    ];
  }
}
