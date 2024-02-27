import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/storeinfo3_item_model.dart';
import 'package:abdelhamed_s_application9/presentation/sixteen_screen/models/sixteen_model.dart';
part 'sixteen_event.dart';
part 'sixteen_state.dart';

/// A bloc that manages the state of a Sixteen according to the event that is dispatched to it.
class SixteenBloc extends Bloc<SixteenEvent, SixteenState> {
  SixteenBloc(SixteenState initialState) : super(initialState) {
    on<SixteenInitialEvent>(_onInitialize);
  }

  List<Storeinfo3ItemModel> fillStoreinfo3ItemList() {
    return [
      Storeinfo3ItemModel(
          storeImage: ImageConstant.imgRectangle30,
          storeName: "El Nor Store",
          distance: "1.2 KM",
          rating: "4.8",
          numRatings: "-574 Ratings"),
      Storeinfo3ItemModel(
          storeImage: ImageConstant.imgRectangle31,
          storeName: "El Hoda Store",
          distance: "1.2 KM",
          rating: "4.8",
          numRatings: "-574 Ratings"),
      Storeinfo3ItemModel(
          storeImage: ImageConstant.imgRectangle30,
          storeName: "El Nor Store",
          distance: "1.2 KM",
          rating: "4.8",
          numRatings: "-574 Ratings")
    ];
  }

  _onInitialize(
    SixteenInitialEvent event,
    Emitter<SixteenState> emit,
  ) async {
    emit(state.copyWith(
      searchController: TextEditingController(),
    ));
    emit(state.copyWith(
        sixteenModelObj: state.sixteenModelObj?.copyWith(
      storeinfo3ItemList: fillStoreinfo3ItemList(),
    )));
  }
}
