import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/paymentmethodcomponent1_item_model.dart';
import '../models/paymentmethod3_item_model.dart';
import 'package:abdelhamed_s_application9/presentation/eightyone_screen/models/eightyone_model.dart';
part 'eightyone_event.dart';
part 'eightyone_state.dart';

/// A bloc that manages the state of a Eightyone according to the event that is dispatched to it.
class EightyoneBloc extends Bloc<EightyoneEvent, EightyoneState> {
  EightyoneBloc(EightyoneState initialState) : super(initialState) {
    on<EightyoneInitialEvent>(_onInitialize);
    on<ChangeSwitchEvent>(_changeSwitch);
  }

  _changeSwitch(
    ChangeSwitchEvent event,
    Emitter<EightyoneState> emit,
  ) {
    emit(state.copyWith(
      isSelectedSwitch: event.value,
    ));
  }

  List<Paymentmethodcomponent1ItemModel> fillPaymentmethodcomponent1ItemList() {
    return [
      Paymentmethodcomponent1ItemModel(
          paymentMethod: "Payment method",
          cashImage: ImageConstant.imgCashOnDelivery,
          cashText: "Cash",
          bankTransferImage: ImageConstant.imgWallet3127x27,
          myWallet: "My wallet",
          price: "500 YER",
          banktransfer: ImageConstant.imgBanking1,
          bankTransferText: "Bank transfer")
    ];
  }

  List<Paymentmethod3ItemModel> fillPaymentmethod3ItemList() {
    return [
      Paymentmethod3ItemModel(
          image: ImageConstant.imgLogoNormal1,
          title: "Cash pay",
          accountNumber: "Account (6525454)"),
      Paymentmethod3ItemModel(
          image: ImageConstant.imgFloosakLogo1,
          title: "Floosak",
          accountNumber: "Account (6525454)"),
      Paymentmethod3ItemModel(
          image: ImageConstant.imgArtboard11,
          title: "Saba cash",
          accountNumber: "Account (6525454)")
    ];
  }

  _onInitialize(
    EightyoneInitialEvent event,
    Emitter<EightyoneState> emit,
  ) async {
    emit(state.copyWith(
      nameController: TextEditingController(),
      isSelectedSwitch: false,
    ));
    emit(state.copyWith(
        eightyoneModelObj: state.eightyoneModelObj?.copyWith(
      paymentmethodcomponent1ItemList: fillPaymentmethodcomponent1ItemList(),
      paymentmethod3ItemList: fillPaymentmethod3ItemList(),
    )));
  }
}
