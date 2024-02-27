import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/productlist6_item_model.dart';
import 'package:abdelhamed_s_application9/presentation/thirtyone_page/models/thirtyone_model.dart';
part 'thirtyone_event.dart';
part 'thirtyone_state.dart';

/// A bloc that manages the state of a Thirtyone according to the event that is dispatched to it.
class ThirtyoneBloc extends Bloc<ThirtyoneEvent, ThirtyoneState> {
  ThirtyoneBloc(ThirtyoneState initialState) : super(initialState) {
    on<ThirtyoneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ThirtyoneInitialEvent event,
    Emitter<ThirtyoneState> emit,
  ) async {
    emit(state.copyWith(
        thirtyoneModelObj: state.thirtyoneModelObj?.copyWith(
      productlist6ItemList: fillProductlist6ItemList(),
    )));
  }

  List<Productlist6ItemModel> fillProductlist6ItemList() {
    return [
      Productlist6ItemModel(
          productImage: ImageConstant.imgRectangle22426190x160,
          productText: "40%",
          categoryText: "Bomber Jackets",
          priceText1: "30.0 YER",
          priceText2: "49.9YER"),
      Productlist6ItemModel(
          productImage: ImageConstant.imgRectangle22426,
          productText: "30%",
          categoryText: "Bomber Jackets",
          priceText1: "30.0 YER",
          priceText2: "49.9YER"),
      Productlist6ItemModel(
          productImage: ImageConstant.imgRectangle224261,
          productText: "15%",
          categoryText: "Bomber Jackets",
          priceText1: "30.0 YER",
          priceText2: "49.9YER"),
      Productlist6ItemModel(
          productImage: ImageConstant.imgRectangle224262,
          productText: "20%",
          categoryText: "Bomber Jackets",
          priceText1: "30.0 YER",
          priceText2: "49.9YER"),
      Productlist6ItemModel(
          productImage: ImageConstant.imgRectangle224264,
          productText: "35%",
          categoryText: "Bomber Jackets",
          priceText1: "30.0 YER",
          priceText2: "49.9YER"),
      Productlist6ItemModel(
          productImage: ImageConstant.imgRectangle224263,
          productText: "25%",
          categoryText: "Bomber Jackets",
          priceText1: "30.0 YER",
          priceText2: "49.9YER")
    ];
  }
}
