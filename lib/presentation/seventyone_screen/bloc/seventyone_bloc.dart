import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/userprofile4_item_model.dart';
import 'package:abdelhamed_s_application9/presentation/seventyone_screen/models/seventyone_model.dart';
part 'seventyone_event.dart';
part 'seventyone_state.dart';

/// A bloc that manages the state of a Seventyone according to the event that is dispatched to it.
class SeventyoneBloc extends Bloc<SeventyoneEvent, SeventyoneState> {
  SeventyoneBloc(SeventyoneState initialState) : super(initialState) {
    on<SeventyoneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SeventyoneInitialEvent event,
    Emitter<SeventyoneState> emit,
  ) async {
    emit(state.copyWith(
        seventyoneModelObj: state.seventyoneModelObj?.copyWith(
      userprofile4ItemList: fillUserprofile4ItemList(),
    )));
  }

  List<Userprofile4ItemModel> fillUserprofile4ItemList() {
    return [
      Userprofile4ItemModel(
          settings: ImageConstant.imgSettingsWhiteA700,
          userName: "El Noor",
          ratingText: "4.5",
          ratingCount: "-235 Ratings",
          distance: "1.2 KM"),
      Userprofile4ItemModel(
          settings: ImageConstant.imgUserWhiteA700,
          userName: "El Safa",
          ratingText: "4.5",
          ratingCount: "-235 Ratings",
          distance: "1.2 KM"),
      Userprofile4ItemModel(
          settings: ImageConstant.imgGridWhiteA700,
          userName: "El Hoda",
          ratingText: "4.5",
          ratingCount: "-235 Ratings",
          distance: "1.2 KM")
    ];
  }
}
