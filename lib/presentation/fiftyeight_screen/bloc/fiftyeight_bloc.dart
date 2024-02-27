import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/fiftyeight_item_model.dart';
import 'package:abdelhamed_s_application9/presentation/fiftyeight_screen/models/fiftyeight_model.dart';
part 'fiftyeight_event.dart';
part 'fiftyeight_state.dart';

/// A bloc that manages the state of a Fiftyeight according to the event that is dispatched to it.
class FiftyeightBloc extends Bloc<FiftyeightEvent, FiftyeightState> {
  FiftyeightBloc(FiftyeightState initialState) : super(initialState) {
    on<FiftyeightInitialEvent>(_onInitialize);
  }

  _onInitialize(
    FiftyeightInitialEvent event,
    Emitter<FiftyeightState> emit,
  ) async {
    emit(state.copyWith(
        fiftyeightModelObj: state.fiftyeightModelObj?.copyWith(
      fiftyeightItemList: fillFiftyeightItemList(),
    )));
  }

  List<FiftyeightItemModel> fillFiftyeightItemList() {
    return [
      FiftyeightItemModel(
          overallRating: "Overall rating",
          overallrating: ImageConstant.imgCheckmarkSquare01),
      FiftyeightItemModel(
          overallRating: "Discount",
          overallrating: ImageConstant.imgCheckmarkSquare01),
      FiftyeightItemModel(
          overallRating: "Maximum buying",
          overallrating: ImageConstant.imgCheckmarkSquare01Gray40007),
      FiftyeightItemModel(
          overallRating: "Product return",
          overallrating: ImageConstant.imgCheckmarkSquare01Gray40007),
      FiftyeightItemModel(
          overallRating: "Polyester",
          overallrating: ImageConstant.imgCheckmarkSquare01),
      FiftyeightItemModel(
          overallRating: "Zipper closure",
          overallrating: ImageConstant.imgCheckmarkSquare01Gray40007),
      FiftyeightItemModel(
          overallRating: "Item type",
          overallrating: ImageConstant.imgCheckmarkSquare01),
      FiftyeightItemModel(
          overallRating: "Style",
          overallrating: ImageConstant.imgCheckmarkSquare01)
    ];
  }
}
