import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/paymentmethod2_item_model.dart';
import '../models/userprofile7_item_model.dart';
import 'package:abdelhamed_s_application9/presentation/seventynine_screen/models/seventynine_model.dart';
part 'seventynine_event.dart';
part 'seventynine_state.dart';

/// A bloc that manages the state of a Seventynine according to the event that is dispatched to it.
class SeventynineBloc extends Bloc<SeventynineEvent, SeventynineState> {
  SeventynineBloc(SeventynineState initialState) : super(initialState) {
    on<SeventynineInitialEvent>(_onInitialize);
    on<ChangeSwitchEvent>(_changeSwitch);
    on<ChangeRadioButtonEvent>(_changeRadioButton);
  }

  _changeSwitch(
    ChangeSwitchEvent event,
    Emitter<SeventynineState> emit,
  ) {
    emit(state.copyWith(
      isSelectedSwitch: event.value,
    ));
  }

  _changeRadioButton(
    ChangeRadioButtonEvent event,
    Emitter<SeventynineState> emit,
  ) {
    emit(state.copyWith(
      radioGroup: event.value,
    ));
  }

  List<Paymentmethod2ItemModel> fillPaymentmethod2ItemList() {
    return [
      Paymentmethod2ItemModel(
          paymentMethodText: "Payment method",
          cashImage: ImageConstant.imgCashOnDelivery,
          cashText: "Cash",
          cashImage2: ImageConstant.imgWallet3127x27,
          myWalletText: "My wallet",
          walletAmountText: "500 YER",
          bankTransferImage: ImageConstant.imgBanking1,
          bankTransferText: "Bank transfer")
    ];
  }

  List<String> fillRadioList() {
    return ["lbl_cash_pay", "msg_account_6525454"];
  }

  List<Userprofile7ItemModel> fillUserprofile7ItemList() {
    return [
      Userprofile7ItemModel(
          userImage: ImageConstant.imgFloosakLogo1,
          username: "Floosak",
          accountNumber: "Account (6525454)"),
      Userprofile7ItemModel(
          userImage: ImageConstant.imgArtboard11,
          username: "Saba cash",
          accountNumber: "Account (6525454)")
    ];
  }

  _onInitialize(
    SeventynineInitialEvent event,
    Emitter<SeventynineState> emit,
  ) async {
    emit(state.copyWith(
      group244Controller: TextEditingController(),
      zipcodeController: TextEditingController(),
      isSelectedSwitch: false,
      radioGroup: "",
    ));
    emit(state.copyWith(
        seventynineModelObj: state.seventynineModelObj?.copyWith(
      paymentmethod2ItemList: fillPaymentmethod2ItemList(),
      radioList: fillRadioList(),
      userprofile7ItemList: fillUserprofile7ItemList(),
    )));
  }
}
