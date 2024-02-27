import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/transactionlist_item_model.dart';
import '../models/userprofile6_item_model.dart';
import 'package:abdelhamed_s_application9/presentation/seventyfour_screen/models/seventyfour_model.dart';
part 'seventyfour_event.dart';
part 'seventyfour_state.dart';

/// A bloc that manages the state of a Seventyfour according to the event that is dispatched to it.
class SeventyfourBloc extends Bloc<SeventyfourEvent, SeventyfourState> {
  SeventyfourBloc(SeventyfourState initialState) : super(initialState) {
    on<SeventyfourInitialEvent>(_onInitialize);
    on<ChangeSwitchEvent>(_changeSwitch);
  }

  _changeSwitch(
    ChangeSwitchEvent event,
    Emitter<SeventyfourState> emit,
  ) {
    emit(state.copyWith(
      isSelectedSwitch: event.value,
    ));
  }

  List<TransactionlistItemModel> fillTransactionlistItemList() {
    return [
      TransactionlistItemModel(
          cashImage: ImageConstant.imgCashOnDelivery,
          cashText: "Cash",
          bankImage: ImageConstant.imgWallet3127x27,
          walletText: "My wallet",
          amountText: "500 YER",
          bankTransferImage: ImageConstant.imgBanking1,
          bankTransferText: "Bank transfer")
    ];
  }

  List<Userprofile6ItemModel> fillUserprofile6ItemList() {
    return [
      Userprofile6ItemModel(
          cashPayImage: ImageConstant.imgLogoNormal1,
          cashPayText: "Cash pay",
          accountText: "Account (6525454)"),
      Userprofile6ItemModel(
          cashPayImage: ImageConstant.imgFloosakLogo1,
          cashPayText: "Floosak",
          accountText: "Account (6525454)"),
      Userprofile6ItemModel(
          cashPayImage: ImageConstant.imgArtboard11,
          cashPayText: "Saba cash",
          accountText: "Account (6525454)")
    ];
  }

  _onInitialize(
    SeventyfourInitialEvent event,
    Emitter<SeventyfourState> emit,
  ) async {
    emit(state.copyWith(
      isSelectedSwitch: false,
    ));
    emit(state.copyWith(
        seventyfourModelObj: state.seventyfourModelObj?.copyWith(
      transactionlistItemList: fillTransactionlistItemList(),
      userprofile6ItemList: fillUserprofile6ItemList(),
    )));
  }
}
