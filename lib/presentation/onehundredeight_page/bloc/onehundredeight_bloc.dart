import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/ordersummary2_item_model.dart';
import 'package:abdelhamed_s_application9/presentation/onehundredeight_page/models/onehundredeight_model.dart';
part 'onehundredeight_event.dart';
part 'onehundredeight_state.dart';

/// A bloc that manages the state of a Onehundredeight according to the event that is dispatched to it.
class OnehundredeightBloc
    extends Bloc<OnehundredeightEvent, OnehundredeightState> {
  OnehundredeightBloc(OnehundredeightState initialState) : super(initialState) {
    on<OnehundredeightInitialEvent>(_onInitialize);
  }

  _onInitialize(
    OnehundredeightInitialEvent event,
    Emitter<OnehundredeightState> emit,
  ) async {
    emit(state.copyWith(
        onehundredeightModelObj: state.onehundredeightModelObj?.copyWith(
      ordersummary2ItemList: fillOrdersummary2ItemList(),
    )));
  }

  List<Ordersummary2ItemModel> fillOrdersummary2ItemList() {
    return [
      Ordersummary2ItemModel(
          orderNumber: "#52156564320",
          productCount: "products: 3",
          totalAmount: "Total: 120.0 YER",
          deliveryTime: "22/01/2023 - 09:30 PM",
          iconButton: ImageConstant.imgGroup301,
          deliveryPoint: "Delivery point"),
      Ordersummary2ItemModel(
          orderNumber: "#52156564320",
          productCount: "products: 3",
          totalAmount: "Total: 120.0 YER",
          deliveryTime: "22/01/2023 - 09:30 PM",
          iconButton: ImageConstant.imgGroup301,
          deliveryPoint: "Delivery point"),
      Ordersummary2ItemModel(
          orderNumber: "#52156564320",
          productCount: "products: 3",
          totalAmount: "Total: 120.0 YER",
          deliveryTime: "22/01/2023 - 09:30 PM",
          iconButton: ImageConstant.imgGroup1000001073,
          deliveryPoint: "By courier")
    ];
  }
}
