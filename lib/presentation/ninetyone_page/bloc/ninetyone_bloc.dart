import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/ordersummary1_item_model.dart';
import 'package:abdelhamed_s_application9/presentation/ninetyone_page/models/ninetyone_model.dart';
part 'ninetyone_event.dart';
part 'ninetyone_state.dart';

/// A bloc that manages the state of a Ninetyone according to the event that is dispatched to it.
class NinetyoneBloc extends Bloc<NinetyoneEvent, NinetyoneState> {
  NinetyoneBloc(NinetyoneState initialState) : super(initialState) {
    on<NinetyoneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    NinetyoneInitialEvent event,
    Emitter<NinetyoneState> emit,
  ) async {
    emit(state.copyWith(
        ninetyoneModelObj: state.ninetyoneModelObj?.copyWith(
      ordersummary1ItemList: fillOrdersummary1ItemList(),
    )));
  }

  List<Ordersummary1ItemModel> fillOrdersummary1ItemList() {
    return [
      Ordersummary1ItemModel(
          widget: "#52156564320",
          productName: "products: 3",
          totalPrice: "Total: 120.0 YER",
          orderDateTime: "22/01/2023 - 09:30 PM",
          productImage: ImageConstant.imgCalendar11,
          orderSchedule: "Order schedule",
          orderDate: "Sun,07 May,2023",
          hours: "2",
          hoursLabel: "D",
          minutes: "11",
          minutesLabel: "H",
          seconds: "15",
          secondsLabel: "MIN")
    ];
  }
}
