import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/banking_item_model.dart';
import '../models/paymentoption1_item_model.dart';
import 'package:abdelhamed_s_application9/presentation/onehundredthirtyseven_screen/models/onehundredthirtyseven_model.dart';
part 'onehundredthirtyseven_event.dart';
part 'onehundredthirtyseven_state.dart';

/// A bloc that manages the state of a Onehundredthirtyseven according to the event that is dispatched to it.
class OnehundredthirtysevenBloc
    extends Bloc<OnehundredthirtysevenEvent, OnehundredthirtysevenState> {
  OnehundredthirtysevenBloc(OnehundredthirtysevenState initialState)
      : super(initialState) {
    on<OnehundredthirtysevenInitialEvent>(_onInitialize);
  }

  _onInitialize(
    OnehundredthirtysevenInitialEvent event,
    Emitter<OnehundredthirtysevenState> emit,
  ) async {
    emit(state.copyWith(
        onehundredthirtysevenModelObj:
            state.onehundredthirtysevenModelObj?.copyWith(
      bankingItemList: fillBankingItemList(),
      paymentoption1ItemList: fillPaymentoption1ItemList(),
    )));
  }

  List<BankingItemModel> fillBankingItemList() {
    return [BankingItemModel(banking: ImageConstant.imgBanking1)];
  }

  List<Paymentoption1ItemModel> fillPaymentoption1ItemList() {
    return [
      Paymentoption1ItemModel(
          image: ImageConstant.imgLogoNormal1,
          title: "Cash pay",
          accountNumber: "Account (6525454)"),
      Paymentoption1ItemModel(
          image: ImageConstant.imgFloosakLogo1,
          title: "Floosak",
          accountNumber: "Account (6525454)"),
      Paymentoption1ItemModel(
          image: ImageConstant.imgArtboard11,
          title: "Saba cash",
          accountNumber: "Account (6525454)")
    ];
  }
}
