import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/productlist5_item_model.dart';
import 'package:abdelhamed_s_application9/presentation/fifteen_screen/models/fifteen_model.dart';
part 'fifteen_event.dart';
part 'fifteen_state.dart';

/// A bloc that manages the state of a Fifteen according to the event that is dispatched to it.
class FifteenBloc extends Bloc<FifteenEvent, FifteenState> {
  FifteenBloc(FifteenState initialState) : super(initialState) {
    on<FifteenInitialEvent>(_onInitialize);
  }

  List<Productlist5ItemModel> fillProductlist5ItemList() {
    return [
      Productlist5ItemModel(
          productImage: ImageConstant.imgRectangle16,
          productName: "Bomber Jackets",
          productPrice1: "30.0 YER",
          productPrice2: "49.9 YER"),
      Productlist5ItemModel(
          productImage: ImageConstant.imgRectangle1649x49,
          productName: "Bomber Jackets")
    ];
  }

  _onInitialize(
    FifteenInitialEvent event,
    Emitter<FifteenState> emit,
  ) async {
    emit(state.copyWith(
      searchController: TextEditingController(),
    ));
    emit(state.copyWith(
        fifteenModelObj: state.fifteenModelObj?.copyWith(
      productlist5ItemList: fillProductlist5ItemList(),
    )));
  }
}
