import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/storeinfo5_item_model.dart';
import 'package:abdelhamed_s_application9/presentation/thirtyeight_bottomsheet/models/thirtyeight_model.dart';
part 'thirtyeight_event.dart';
part 'thirtyeight_state.dart';

/// A bloc that manages the state of a Thirtyeight according to the event that is dispatched to it.
class ThirtyeightBloc extends Bloc<ThirtyeightEvent, ThirtyeightState> {
  ThirtyeightBloc(ThirtyeightState initialState) : super(initialState) {
    on<ThirtyeightInitialEvent>(_onInitialize);
  }

  List<Storeinfo5ItemModel> fillStoreinfo5ItemList() {
    return [
      Storeinfo5ItemModel(
          storeImage: ImageConstant.imgRectangle30,
          storeName: "El Nor Store",
          distance: "1.2 KM",
          rating: "4.8",
          numRatings: "-574 Ratings"),
      Storeinfo5ItemModel(
          storeImage: ImageConstant.imgRectangle31,
          storeName: "El Hoda Store",
          distance: "1.2 KM",
          rating: "4.8",
          numRatings: "-574 Ratings")
    ];
  }

  _onInitialize(
    ThirtyeightInitialEvent event,
    Emitter<ThirtyeightState> emit,
  ) async {
    emit(state.copyWith(
      searchController: TextEditingController(),
    ));
    emit(state.copyWith(
        thirtyeightModelObj: state.thirtyeightModelObj?.copyWith(
      storeinfo5ItemList: fillStoreinfo5ItemList(),
    )));
  }
}
