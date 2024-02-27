import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/userprofile9_item_model.dart';
import 'package:abdelhamed_s_application9/presentation/onehundredtwelve_screen/models/onehundredtwelve_model.dart';
part 'onehundredtwelve_event.dart';
part 'onehundredtwelve_state.dart';

/// A bloc that manages the state of a Onehundredtwelve according to the event that is dispatched to it.
class OnehundredtwelveBloc
    extends Bloc<OnehundredtwelveEvent, OnehundredtwelveState> {
  OnehundredtwelveBloc(OnehundredtwelveState initialState)
      : super(initialState) {
    on<OnehundredtwelveInitialEvent>(_onInitialize);
  }

  _onInitialize(
    OnehundredtwelveInitialEvent event,
    Emitter<OnehundredtwelveState> emit,
  ) async {
    emit(state.copyWith(
        onehundredtwelveModelObj: state.onehundredtwelveModelObj?.copyWith(
      userprofile9ItemList: fillUserprofile9ItemList(),
    )));
  }

  List<Userprofile9ItemModel> fillUserprofile9ItemList() {
    return [
      Userprofile9ItemModel(
          settings: ImageConstant.imgSettingsWhiteA700,
          elNoor: "El Noor",
          fortyFive: "4.5",
          ratings: "-235 Ratings",
          distance: "1.2 KM"),
      Userprofile9ItemModel(
          settings: ImageConstant.imgUserWhiteA700,
          elNoor: "El Safa",
          fortyFive: "4.5",
          ratings: "-235 Ratings",
          distance: "1.2 KM"),
      Userprofile9ItemModel(
          settings: ImageConstant.imgGridWhiteA700,
          elNoor: "El Hoda",
          fortyFive: "4.5",
          ratings: "-235 Ratings",
          distance: "1.2 KM")
    ];
  }
}
