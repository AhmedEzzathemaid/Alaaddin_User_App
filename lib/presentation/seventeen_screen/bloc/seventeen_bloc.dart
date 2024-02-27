import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/storeinfo4_item_model.dart';
import 'package:abdelhamed_s_application9/presentation/seventeen_screen/models/seventeen_model.dart';
part 'seventeen_event.dart';
part 'seventeen_state.dart';

/// A bloc that manages the state of a Seventeen according to the event that is dispatched to it.
class SeventeenBloc extends Bloc<SeventeenEvent, SeventeenState> {
  SeventeenBloc(SeventeenState initialState) : super(initialState) {
    on<SeventeenInitialEvent>(_onInitialize);
  }

  List<Storeinfo4ItemModel> fillStoreinfo4ItemList() {
    return [
      Storeinfo4ItemModel(
          storeImage: ImageConstant.imgRectangle30,
          storeName: "El Nor Store",
          distance: "1.2 KM",
          ratingImage: ImageConstant.imgSignal,
          rating: "4.8",
          ratingCount: "-574 Ratings"),
      Storeinfo4ItemModel(storeImage: ImageConstant.imgRectangle16)
    ];
  }

  _onInitialize(
    SeventeenInitialEvent event,
    Emitter<SeventeenState> emit,
  ) async {
    emit(state.copyWith(
      searchController: TextEditingController(),
    ));
    emit(state.copyWith(
        seventeenModelObj: state.seventeenModelObj?.copyWith(
      storeinfo4ItemList: fillStoreinfo4ItemList(),
    )));
  }
}
