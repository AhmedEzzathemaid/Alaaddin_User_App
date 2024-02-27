import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/orderdetails_item_model.dart';
import 'package:abdelhamed_s_application9/presentation/eightyeight_page/models/eightyeight_model.dart';
part 'eightyeight_event.dart';
part 'eightyeight_state.dart';

/// A bloc that manages the state of a Eightyeight according to the event that is dispatched to it.
class EightyeightBloc extends Bloc<EightyeightEvent, EightyeightState> {
  EightyeightBloc(EightyeightState initialState) : super(initialState) {
    on<EightyeightInitialEvent>(_onInitialize);
  }

  _onInitialize(
    EightyeightInitialEvent event,
    Emitter<EightyeightState> emit,
  ) async {
    emit(state.copyWith(
        eightyeightModelObj: state.eightyeightModelObj?.copyWith(
      orderdetailsItemList: fillOrderdetailsItemList(),
    )));
  }

  List<OrderdetailsItemModel> fillOrderdetailsItemList() {
    return [
      OrderdetailsItemModel(
          orderNumber: "#52156564320",
          productCount: "products: 3",
          totalAmount: "Total: 120.0 YER",
          orderDateTime: "22/01/2023 - 09:30 PM",
          productImage: ImageConstant.imgCalendar11,
          orderScheduleTitle: "Order schedule",
          orderScheduleDate: "Sun,07 May,2023",
          timerHours: "2",
          timerDays: "D",
          timerMinutes: "11",
          h: "H",
          fifteen: "15",
          min: "MIN")
    ];
  }
}
