import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/userprofile2_item_model.dart';
import 'package:abdelhamed_s_application9/presentation/sixtyone_page/models/sixtyone_model.dart';
part 'sixtyone_event.dart';
part 'sixtyone_state.dart';

/// A bloc that manages the state of a Sixtyone according to the event that is dispatched to it.
class SixtyoneBloc extends Bloc<SixtyoneEvent, SixtyoneState> {
  SixtyoneBloc(SixtyoneState initialState) : super(initialState) {
    on<SixtyoneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SixtyoneInitialEvent event,
    Emitter<SixtyoneState> emit,
  ) async {
    emit(state.copyWith(
        sixtyoneModelObj: state.sixtyoneModelObj?.copyWith(
      userprofile2ItemList: fillUserprofile2ItemList(),
    )));
  }

  List<Userprofile2ItemModel> fillUserprofile2ItemList() {
    return [
      Userprofile2ItemModel(
          settings: ImageConstant.imgSettingsWhiteA700,
          elNoor: "El Noor",
          fortyFive: "4.5",
          ratings: "-235 Ratings",
          distance: "1.2 KM"),
      Userprofile2ItemModel(
          settings: ImageConstant.imgUserWhiteA700,
          elNoor: "El Safa",
          fortyFive: "4.5",
          ratings: "-235 Ratings",
          distance: "1.2 KM"),
      Userprofile2ItemModel(
          settings: ImageConstant.imgGridWhiteA700,
          elNoor: "El Hoda",
          fortyFive: "4.5",
          ratings: "-235 Ratings",
          distance: "1.2 KM")
    ];
  }
}
