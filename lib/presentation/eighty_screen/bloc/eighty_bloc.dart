import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/paymentmethodcomponent_item_model.dart';
import '../models/userprofile8_item_model.dart';
import 'package:abdelhamed_s_application9/presentation/eighty_screen/models/eighty_model.dart';
part 'eighty_event.dart';
part 'eighty_state.dart';

/// A bloc that manages the state of a Eighty according to the event that is dispatched to it.
class EightyBloc extends Bloc<EightyEvent, EightyState> {
  EightyBloc(EightyState initialState) : super(initialState) {
    on<EightyInitialEvent>(_onInitialize);
    on<ChangeSwitchEvent>(_changeSwitch);
    on<ChangeRadioButtonEvent>(_changeRadioButton);
  }

  _changeSwitch(
    ChangeSwitchEvent event,
    Emitter<EightyState> emit,
  ) {
    emit(state.copyWith(
      isSelectedSwitch: event.value,
    ));
  }

  _changeRadioButton(
    ChangeRadioButtonEvent event,
    Emitter<EightyState> emit,
  ) {
    emit(state.copyWith(
      radioGroup: event.value,
    ));
  }

  List<PaymentmethodcomponentItemModel> fillPaymentmethodcomponentItemList() {
    return [
      PaymentmethodcomponentItemModel(
          paymentMethod: "Payment method",
          cashImage: ImageConstant.imgCashOnDelivery,
          cashText: "Cash",
          cash: ImageConstant.imgWallet3127x27,
          myWalletText: "My wallet",
          walletAmountText: "500 YER",
          banktransfer: ImageConstant.imgBanking1,
          bankTransferText: "Bank transfer")
    ];
  }

  List<Userprofile8ItemModel> fillUserprofile8ItemList() {
    return [
      Userprofile8ItemModel(
          cashPayImage: ImageConstant.imgLogoNormal1,
          cashPayText: "Cash pay",
          accountText: "Account (6525454)"),
      Userprofile8ItemModel(
          cashPayImage: ImageConstant.imgFloosakLogo1,
          cashPayText: "Floosak",
          accountText: "Account (6525454)")
    ];
  }

  List<String> fillRadioList() {
    return ["lbl_saba_cash", "msg_account_6525454"];
  }

  _onInitialize(
    EightyInitialEvent event,
    Emitter<EightyState> emit,
  ) async {
    emit(state.copyWith(
      group231Controller: TextEditingController(),
      nameController: TextEditingController(),
      isSelectedSwitch: false,
      radioGroup: "",
    ));
    emit(state.copyWith(
        eightyModelObj: state.eightyModelObj?.copyWith(
      paymentmethodcomponentItemList: fillPaymentmethodcomponentItemList(),
      userprofile8ItemList: fillUserprofile8ItemList(),
      radioList: fillRadioList(),
    )));
  }
}
