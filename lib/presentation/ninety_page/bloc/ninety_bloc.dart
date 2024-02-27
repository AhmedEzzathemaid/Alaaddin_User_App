import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/orderdetails1_item_model.dart';
import 'package:abdelhamed_s_application9/presentation/ninety_page/models/ninety_model.dart';
part 'ninety_event.dart';
part 'ninety_state.dart';

/// A bloc that manages the state of a Ninety according to the event that is dispatched to it.
class NinetyBloc extends Bloc<NinetyEvent, NinetyState> {
  NinetyBloc(NinetyState initialState) : super(initialState) {
    on<NinetyInitialEvent>(_onInitialize);
  }

  _onInitialize(
    NinetyInitialEvent event,
    Emitter<NinetyState> emit,
  ) async {
    emit(state.copyWith(
        ninetyModelObj: state.ninetyModelObj?.copyWith(
      orderdetails1ItemList: fillOrderdetails1ItemList(),
    )));
  }

  List<Orderdetails1ItemModel> fillOrderdetails1ItemList() {
    return [
      Orderdetails1ItemModel(
          orderNumber: "#52156564320",
          productCount: "products: 3",
          totalAmount: "Total: 120.0 YER",
          deliveryTime: "22/01/2023 - 09:30 PM",
          iconButton: ImageConstant.imgGroup301,
          deliveryPoint: "Delivery point",
          deliveryTimeFrame: "within 2 days"),
      Orderdetails1ItemModel(
          orderNumber: "#52156564320",
          productCount: "products: 3",
          totalAmount: "Total: 120.0 YER",
          iconButton: ImageConstant.imgGroup1000001073,
          deliveryPoint: "By courier",
          deliveryTimeFrame: "within 4 days"),
      Orderdetails1ItemModel(
          orderNumber: "#52156564320",
          productCount: "products: 3",
          totalAmount: "Total: 120.0 YER",
          deliveryTime: "22/01/2023 - 09:30 PM",
          iconButton: ImageConstant.imgGroup301,
          deliveryPoint: "Delivery point",
          deliveryTimeFrame: "within 2 days")
    ];
  }
}
