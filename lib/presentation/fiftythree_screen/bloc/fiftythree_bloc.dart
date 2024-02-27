import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/productlist14_item_model.dart';
import 'package:abdelhamed_s_application9/presentation/fiftythree_screen/models/fiftythree_model.dart';
part 'fiftythree_event.dart';
part 'fiftythree_state.dart';

/// A bloc that manages the state of a Fiftythree according to the event that is dispatched to it.
class FiftythreeBloc extends Bloc<FiftythreeEvent, FiftythreeState> {
  FiftythreeBloc(FiftythreeState initialState) : super(initialState) {
    on<FiftythreeInitialEvent>(_onInitialize);
  }

  _onInitialize(
    FiftythreeInitialEvent event,
    Emitter<FiftythreeState> emit,
  ) async {
    emit(state.copyWith(
        fiftythreeModelObj: state.fiftythreeModelObj?.copyWith(
      productlist14ItemList: fillProductlist14ItemList(),
    )));
  }

  List<Productlist14ItemModel> fillProductlist14ItemList() {
    return [
      Productlist14ItemModel(
          productImage1: ImageConstant.imgCheckmarkSquare01,
          productImage2: ImageConstant.imgRectangle1657x57,
          productName: "Bomber Jackets",
          price1: "30.0 YER",
          price2: "49.9 YER",
          categoryImage: "Men"),
      Productlist14ItemModel(
          productImage1: ImageConstant.imgCheckmarkSquare01Gray40007,
          productImage2: ImageConstant.imgRectangle161,
          productName: "Bomber Jackets",
          categoryImage: "Men"),
      Productlist14ItemModel(
          productImage1: ImageConstant.imgCheckmarkSquare01,
          productImage2: ImageConstant.imgRectangle1658x57,
          productName: "Bomber Jackets",
          categoryImage: "Men"),
      Productlist14ItemModel(
          productImage1: ImageConstant.imgCheckmarkSquare01Gray40007,
          productImage2: ImageConstant.imgRectangle161,
          productName: "Bomber Jackets",
          price1: "30.0 YER",
          price2: "49.9 YER",
          categoryImage: "Men")
    ];
  }
}
