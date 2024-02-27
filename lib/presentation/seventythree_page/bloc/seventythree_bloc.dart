import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/cashcomponent_item_model.dart';
import 'package:country_pickers/country.dart';
import 'package:country_pickers/utils/utils.dart';
import '../models/userprofile5_item_model.dart';
import 'package:abdelhamed_s_application9/presentation/seventythree_page/models/seventythree_model.dart';
part 'seventythree_event.dart';
part 'seventythree_state.dart';

/// A bloc that manages the state of a Seventythree according to the event that is dispatched to it.
class SeventythreeBloc extends Bloc<SeventythreeEvent, SeventythreeState> {
  SeventythreeBloc(SeventythreeState initialState) : super(initialState) {
    on<SeventythreeInitialEvent>(_onInitialize);
    on<ChangeCountryEvent>(_changeCountry);
  }

  _changeCountry(
    ChangeCountryEvent event,
    Emitter<SeventythreeState> emit,
  ) {
    emit(state.copyWith(
      selectedCountry: event.value,
    ));
  }

  List<CashcomponentItemModel> fillCashcomponentItemList() {
    return [
      CashcomponentItemModel(
          cashImage: ImageConstant.imgCashOnDelivery, cashText: "Cash"),
      CashcomponentItemModel(
          cashImage: ImageConstant.imgBanking1, cashText: "Bank transfer")
    ];
  }

  List<Userprofile5ItemModel> fillUserprofile5ItemList() {
    return [
      Userprofile5ItemModel(
          cashPayImage: ImageConstant.imgLogoNormal1,
          cashPayText: "Cash pay",
          accountText: "Account (6525454)"),
      Userprofile5ItemModel(
          cashPayImage: ImageConstant.imgFloosakLogo1,
          cashPayText: "Floosak",
          accountText: "Account (6525454)"),
      Userprofile5ItemModel(
          cashPayImage: ImageConstant.imgArtboard11,
          cashPayText: "Saba cash",
          accountText: "Account (6525454)")
    ];
  }

  _onInitialize(
    SeventythreeInitialEvent event,
    Emitter<SeventythreeState> emit,
  ) async {
    emit(state.copyWith(
      fullNameController: TextEditingController(),
      phoneNumberController: TextEditingController(),
      group239Controller: TextEditingController(),
    ));
    emit(state.copyWith(
        seventythreeModelObj: state.seventythreeModelObj?.copyWith(
      cashcomponentItemList: fillCashcomponentItemList(),
      userprofile5ItemList: fillUserprofile5ItemList(),
    )));
  }
}
