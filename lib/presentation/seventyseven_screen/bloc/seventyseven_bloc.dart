import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/viewhierarchy4_item_model.dart';
import '../models/paymentmethod1_item_model.dart';
import 'package:abdelhamed_s_application9/presentation/seventyseven_screen/models/seventyseven_model.dart';
part 'seventyseven_event.dart';
part 'seventyseven_state.dart';

/// A bloc that manages the state of a Seventyseven according to the event that is dispatched to it.
class SeventysevenBloc extends Bloc<SeventysevenEvent, SeventysevenState> {
  SeventysevenBloc(SeventysevenState initialState) : super(initialState) {
    on<SeventysevenInitialEvent>(_onInitialize);
    on<ChangeSwitchEvent>(_changeSwitch);
  }

  _changeSwitch(
    ChangeSwitchEvent event,
    Emitter<SeventysevenState> emit,
  ) {
    emit(state.copyWith(
      isSelectedSwitch: event.value,
    ));
  }

  List<Viewhierarchy4ItemModel> fillViewhierarchy4ItemList() {
    return [
      Viewhierarchy4ItemModel(
          cashImage: ImageConstant.imgCashOnDelivery,
          cashText: "Cash",
          cashImage1: ImageConstant.imgWallet3127x27,
          walletText: "My wallet",
          amountText: "500 YER",
          bankTransferImage: ImageConstant.imgBanking1,
          bankTransferText: "Bank transfer")
    ];
  }

  List<Paymentmethod1ItemModel> fillPaymentmethod1ItemList() {
    return [
      Paymentmethod1ItemModel(
          image: ImageConstant.imgLogoNormal1,
          title: "Cash pay",
          accountNumber: "Account (6525454)"),
      Paymentmethod1ItemModel(
          image: ImageConstant.imgFloosakLogo1,
          title: "Floosak",
          accountNumber: "Account (6525454)"),
      Paymentmethod1ItemModel(
          image: ImageConstant.imgArtboard11,
          title: "Saba cash",
          accountNumber: "Account (6525454)")
    ];
  }

  _onInitialize(
    SeventysevenInitialEvent event,
    Emitter<SeventysevenState> emit,
  ) async {
    emit(state.copyWith(
      isSelectedSwitch: false,
    ));
    emit(state.copyWith(
        seventysevenModelObj: state.seventysevenModelObj?.copyWith(
      viewhierarchy4ItemList: fillViewhierarchy4ItemList(),
      paymentmethod1ItemList: fillPaymentmethod1ItemList(),
    )));
  }
}
