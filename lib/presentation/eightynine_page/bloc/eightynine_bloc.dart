import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/ordersummary_item_model.dart';
import 'package:abdelhamed_s_application9/presentation/eightynine_page/models/eightynine_model.dart';
part 'eightynine_event.dart';
part 'eightynine_state.dart';

/// A bloc that manages the state of a Eightynine according to the event that is dispatched to it.
class EightynineBloc extends Bloc<EightynineEvent, EightynineState> {
  EightynineBloc(EightynineState initialState) : super(initialState) {
    on<EightynineInitialEvent>(_onInitialize);
  }

  _onInitialize(
    EightynineInitialEvent event,
    Emitter<EightynineState> emit,
  ) async {
    emit(state.copyWith(
        eightynineModelObj: state.eightynineModelObj?.copyWith(
      ordersummaryItemList: fillOrdersummaryItemList(),
    )));
  }

  List<OrdersummaryItemModel> fillOrdersummaryItemList() {
    return [
      OrdersummaryItemModel(
          orderNumber: "#52156564320",
          productCount: "products: 3",
          totalAmount: "Total: 120.0 YER",
          deliveryTime: "22/01/2023 - 09:30 PM",
          deliveryPoint: "Delivery point",
          deliveryTimeFrame: "within 2 days"),
      OrdersummaryItemModel(
          orderNumber: "#52156564320",
          productCount: "products: 3",
          totalAmount: "Total: 120.0 YER",
          deliveryTime: "22/01/2023 - 09:30 PM",
          deliveryPoint: "Delivery point",
          deliveryTimeFrame: "within 2 days"),
      OrdersummaryItemModel(
          orderNumber: "#52156564320",
          productCount: "products: 3",
          totalAmount: "Total: 120.0 YER",
          deliveryTime: "22/01/2023 - 09:30 PM",
          deliveryPoint: "Delivery point",
          deliveryTimeFrame: "within 2 days")
    ];
  }
}
