import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/orderpayment1_item_model.dart';
import 'package:abdelhamed_s_application9/presentation/onehundredthirtysix_screen/models/onehundredthirtysix_model.dart';
part 'onehundredthirtysix_event.dart';
part 'onehundredthirtysix_state.dart';

/// A bloc that manages the state of a Onehundredthirtysix according to the event that is dispatched to it.
class OnehundredthirtysixBloc
    extends Bloc<OnehundredthirtysixEvent, OnehundredthirtysixState> {
  OnehundredthirtysixBloc(OnehundredthirtysixState initialState)
      : super(initialState) {
    on<OnehundredthirtysixInitialEvent>(_onInitialize);
  }

  _onInitialize(
    OnehundredthirtysixInitialEvent event,
    Emitter<OnehundredthirtysixState> emit,
  ) async {
    emit(state.copyWith(
        onehundredthirtysixModelObj:
            state.onehundredthirtysixModelObj?.copyWith(
      orderpayment1ItemList: fillOrderpayment1ItemList(),
    )));
  }

  List<Orderpayment1ItemModel> fillOrderpayment1ItemList() {
    return [
      Orderpayment1ItemModel(
          orderPaymentText: "Order payment",
          orderNumberText: "#52156564320",
          orderDateTimeText: "22/01/2023 - 09:30 PM",
          orderAmountText: "-100 YER"),
      Orderpayment1ItemModel(
          orderPaymentText: "Add balance",
          orderNumberText: "#52156564320",
          orderDateTimeText: "22/01/2023 - 09:30 PM",
          orderAmountText: "200 YER"),
      Orderpayment1ItemModel(
          orderPaymentText: "Balance transferred",
          orderNumberText: "#52156564320",
          orderDateTimeText: "22/01/2023 - 09:30 PM",
          orderAmountText: "-100 YER"),
      Orderpayment1ItemModel(
          orderPaymentText: "Points transfer",
          orderNumberText: "300 points",
          orderDateTimeText: "22/01/2023 - 09:30 PM",
          orderAmountText: "45 YER"),
      Orderpayment1ItemModel(
          orderPaymentText: "Balance deduction",
          orderNumberText: "#52156564320",
          orderDateTimeText: "22/01/2023 - 09:30 PM",
          orderAmountText: "-100 YER"),
      Orderpayment1ItemModel(
          orderPaymentText: "Refund order",
          orderNumberText: "#52156564320",
          orderDateTimeText: "22/01/2023 - 09:30 PM",
          orderAmountText: "200 YER")
    ];
  }
}
