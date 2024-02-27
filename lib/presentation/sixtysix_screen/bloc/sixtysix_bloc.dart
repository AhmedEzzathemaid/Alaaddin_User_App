import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/viewhierarchy1_item_model.dart';
import '../models/userprofile3_item_model.dart';
import 'package:abdelhamed_s_application9/presentation/sixtysix_screen/models/sixtysix_model.dart';
part 'sixtysix_event.dart';
part 'sixtysix_state.dart';

/// A bloc that manages the state of a Sixtysix according to the event that is dispatched to it.
class SixtysixBloc extends Bloc<SixtysixEvent, SixtysixState> {
  SixtysixBloc(SixtysixState initialState) : super(initialState) {
    on<SixtysixInitialEvent>(_onInitialize);
    on<ChangeSwitchEvent>(_changeSwitch);
  }

  _changeSwitch(
    ChangeSwitchEvent event,
    Emitter<SixtysixState> emit,
  ) {
    emit(state.copyWith(
      isSelectedSwitch: event.value,
    ));
  }

  List<Viewhierarchy1ItemModel> fillViewhierarchy1ItemList() {
    return [
      Viewhierarchy1ItemModel(
          cashImage: ImageConstant.imgCashOnDelivery, cashText: "Cash"),
      Viewhierarchy1ItemModel(
          cashImage: ImageConstant.imgBanking1, cashText: "Bank transfer")
    ];
  }

  List<Userprofile3ItemModel> fillUserprofile3ItemList() {
    return [
      Userprofile3ItemModel(
          cashPayImage: ImageConstant.imgLogoNormal1,
          cashPayText: "Cash pay",
          accountText: "Account (6525454)"),
      Userprofile3ItemModel(
          cashPayImage: ImageConstant.imgFloosakLogo1,
          cashPayText: "Floosak",
          accountText: "Account (6525454)"),
      Userprofile3ItemModel(
          cashPayImage: ImageConstant.imgArtboard11,
          cashPayText: "Saba cash",
          accountText: "Account (6525454)")
    ];
  }

  _onInitialize(
    SixtysixInitialEvent event,
    Emitter<SixtysixState> emit,
  ) async {
    emit(state.copyWith(
      isSelectedSwitch: false,
    ));
    emit(state.copyWith(
        sixtysixModelObj: state.sixtysixModelObj?.copyWith(
      viewhierarchy1ItemList: fillViewhierarchy1ItemList(),
      userprofile3ItemList: fillUserprofile3ItemList(),
    )));
  }
}
