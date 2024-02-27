import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/viewhierarchy2_item_model.dart';
import '../models/paymentoption_item_model.dart';
import 'package:abdelhamed_s_application9/presentation/sixtyeight_page/models/sixtyeight_model.dart';
part 'sixtyeight_event.dart';
part 'sixtyeight_state.dart';

/// A bloc that manages the state of a Sixtyeight according to the event that is dispatched to it.
class SixtyeightBloc extends Bloc<SixtyeightEvent, SixtyeightState> {
  SixtyeightBloc(SixtyeightState initialState) : super(initialState) {
    on<SixtyeightInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SixtyeightInitialEvent event,
    Emitter<SixtyeightState> emit,
  ) async {
    emit(state.copyWith(
        sixtyeightModelObj: state.sixtyeightModelObj?.copyWith(
      viewhierarchy2ItemList: fillViewhierarchy2ItemList(),
      paymentoptionItemList: fillPaymentoptionItemList(),
    )));
  }

  List<Viewhierarchy2ItemModel> fillViewhierarchy2ItemList() {
    return [
      Viewhierarchy2ItemModel(
          cashImage: ImageConstant.imgCashOnDelivery, cashText: "Cash"),
      Viewhierarchy2ItemModel(
          cashImage: ImageConstant.imgBanking1, cashText: "Bank transfer")
    ];
  }

  List<PaymentoptionItemModel> fillPaymentoptionItemList() {
    return [
      PaymentoptionItemModel(
          image: ImageConstant.imgLogoNormal1,
          title: "Cash pay",
          accountNumber: "Account (6525454)"),
      PaymentoptionItemModel(
          image: ImageConstant.imgFloosakLogo1,
          title: "Floosak",
          accountNumber: "Account (6525454)"),
      PaymentoptionItemModel(
          image: ImageConstant.imgArtboard11,
          title: "Saba cash",
          accountNumber: "Account (6525454)")
    ];
  }
}
