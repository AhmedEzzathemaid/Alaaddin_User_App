import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/viewhierarchy3_item_model.dart';
import '../models/paymentmethod_item_model.dart';
import 'package:abdelhamed_s_application9/presentation/seventyfive_screen/models/seventyfive_model.dart';
part 'seventyfive_event.dart';
part 'seventyfive_state.dart';

/// A bloc that manages the state of a Seventyfive according to the event that is dispatched to it.
class SeventyfiveBloc extends Bloc<SeventyfiveEvent, SeventyfiveState> {
  SeventyfiveBloc(SeventyfiveState initialState) : super(initialState) {
    on<SeventyfiveInitialEvent>(_onInitialize);
    on<ChangeSwitchEvent>(_changeSwitch);
  }

  _changeSwitch(
    ChangeSwitchEvent event,
    Emitter<SeventyfiveState> emit,
  ) {
    emit(state.copyWith(
      isSelectedSwitch: event.value,
    ));
  }

  List<Viewhierarchy3ItemModel> fillViewhierarchy3ItemList() {
    return [
      Viewhierarchy3ItemModel(
          cashImage: ImageConstant.imgCashOnDelivery,
          cashText: "Cash",
          cashImage1: ImageConstant.imgWallet3127x27,
          walletText: "My wallet",
          amountText: "500 YER",
          bankTransferImage: ImageConstant.imgBanking1,
          bankTransferText: "Bank transfer")
    ];
  }

  List<PaymentmethodItemModel> fillPaymentmethodItemList() {
    return [
      PaymentmethodItemModel(
          image: ImageConstant.imgLogoNormal1,
          title: "Cash pay",
          accountNumber: "Account (6525454)"),
      PaymentmethodItemModel(
          image: ImageConstant.imgFloosakLogo1,
          title: "Floosak",
          accountNumber: "Account (6525454)"),
      PaymentmethodItemModel(
          image: ImageConstant.imgArtboard11,
          title: "Saba cash",
          accountNumber: "Account (6525454)")
    ];
  }

  _onInitialize(
    SeventyfiveInitialEvent event,
    Emitter<SeventyfiveState> emit,
  ) async {
    emit(state.copyWith(
      isSelectedSwitch: false,
    ));
    emit(state.copyWith(
        seventyfiveModelObj: state.seventyfiveModelObj?.copyWith(
      viewhierarchy3ItemList: fillViewhierarchy3ItemList(),
      paymentmethodItemList: fillPaymentmethodItemList(),
    )));
  }
}
