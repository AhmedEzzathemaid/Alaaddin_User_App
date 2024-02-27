import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/walletcomponent_item_model.dart';
import '../models/paymentmethod4_item_model.dart';
import 'package:abdelhamed_s_application9/presentation/eightysix_screen/models/eightysix_model.dart';
part 'eightysix_event.dart';
part 'eightysix_state.dart';

/// A bloc that manages the state of a Eightysix according to the event that is dispatched to it.
class EightysixBloc extends Bloc<EightysixEvent, EightysixState> {
  EightysixBloc(EightysixState initialState) : super(initialState) {
    on<EightysixInitialEvent>(_onInitialize);
  }

  _onInitialize(
    EightysixInitialEvent event,
    Emitter<EightysixState> emit,
  ) async {
    emit(state.copyWith(
        eightysixModelObj: state.eightysixModelObj?.copyWith(
      walletcomponentItemList: fillWalletcomponentItemList(),
      paymentmethod4ItemList: fillPaymentmethod4ItemList(),
    )));
  }

  List<WalletcomponentItemModel> fillWalletcomponentItemList() {
    return [
      WalletcomponentItemModel(
          walletImage: ImageConstant.imgWallet3127x27,
          walletText: "My wallet",
          amountText: "500 YER")
    ];
  }

  List<Paymentmethod4ItemModel> fillPaymentmethod4ItemList() {
    return [
      Paymentmethod4ItemModel(
          image: ImageConstant.imgLogoNormal1,
          title: "Cash pay",
          accountNumber: "Account (6525454)"),
      Paymentmethod4ItemModel(
          image: ImageConstant.imgFloosakLogo1,
          title: "Floosak",
          accountNumber: "Account (6525454)"),
      Paymentmethod4ItemModel(
          image: ImageConstant.imgArtboard11,
          title: "Saba cash",
          accountNumber: "Account (6525454)")
    ];
  }
}
