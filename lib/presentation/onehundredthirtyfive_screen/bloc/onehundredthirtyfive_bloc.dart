import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/orderpayment_item_model.dart';
import 'package:abdelhamed_s_application9/presentation/onehundredthirtyfive_screen/models/onehundredthirtyfive_model.dart';
part 'onehundredthirtyfive_event.dart';
part 'onehundredthirtyfive_state.dart';

/// A bloc that manages the state of a Onehundredthirtyfive according to the event that is dispatched to it.
class OnehundredthirtyfiveBloc
    extends Bloc<OnehundredthirtyfiveEvent, OnehundredthirtyfiveState> {
  OnehundredthirtyfiveBloc(OnehundredthirtyfiveState initialState)
      : super(initialState) {
    on<OnehundredthirtyfiveInitialEvent>(_onInitialize);
  }

  _onInitialize(
    OnehundredthirtyfiveInitialEvent event,
    Emitter<OnehundredthirtyfiveState> emit,
  ) async {
    emit(state.copyWith(
        onehundredthirtyfiveModelObj:
            state.onehundredthirtyfiveModelObj?.copyWith(
      orderpaymentItemList: fillOrderpaymentItemList(),
    )));
  }

  List<OrderpaymentItemModel> fillOrderpaymentItemList() {
    return [
      OrderpaymentItemModel(
          orderPaymentText: "Order payment",
          orderNumberText: "#52156564320",
          orderDateTimeText: "22/01/2023 - 09:30 PM",
          orderAmountText: "-100 YER"),
      OrderpaymentItemModel(
          orderPaymentText: "Add balance",
          orderNumberText: "#52156564320",
          orderDateTimeText: "22/01/2023 - 09:30 PM",
          orderAmountText: "200 YER"),
      OrderpaymentItemModel(
          orderPaymentText: "Balance transferred",
          orderNumberText: "#52156564320",
          orderDateTimeText: "22/01/2023 - 09:30 PM",
          orderAmountText: "-100 YER"),
      OrderpaymentItemModel(
          orderPaymentText: "Order payment",
          orderNumberText: "#52156564320",
          orderDateTimeText: "22/01/2023 - 09:30 PM",
          orderAmountText: "-100 YER"),
      OrderpaymentItemModel(
          orderPaymentText: "Balance deduction",
          orderNumberText: "#52156564320",
          orderDateTimeText: "22/01/2023 - 09:30 PM",
          orderAmountText: "-100 YER"),
      OrderpaymentItemModel(
          orderPaymentText: "Refund order",
          orderNumberText: "#52156564320",
          orderDateTimeText: "22/01/2023 - 09:30 PM",
          orderAmountText: "200 YER")
    ];
  }
}
