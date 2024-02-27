import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/productdetails4_item_model.dart';
import 'package:abdelhamed_s_application9/presentation/onehundredtwentyfour_screen/models/onehundredtwentyfour_model.dart';
part 'onehundredtwentyfour_event.dart';
part 'onehundredtwentyfour_state.dart';

/// A bloc that manages the state of a Onehundredtwentyfour according to the event that is dispatched to it.
class OnehundredtwentyfourBloc
    extends Bloc<OnehundredtwentyfourEvent, OnehundredtwentyfourState> {
  OnehundredtwentyfourBloc(OnehundredtwentyfourState initialState)
      : super(initialState) {
    on<OnehundredtwentyfourInitialEvent>(_onInitialize);
  }

  _onInitialize(
    OnehundredtwentyfourInitialEvent event,
    Emitter<OnehundredtwentyfourState> emit,
  ) async {
    emit(state.copyWith(
        onehundredtwentyfourModelObj:
            state.onehundredtwentyfourModelObj?.copyWith(
      productdetails4ItemList: fillProductdetails4ItemList(),
    )));
  }

  List<Productdetails4ItemModel> fillProductdetails4ItemList() {
    return [
      Productdetails4ItemModel(
          productImage: ImageConstant.imgRectangle1685x85,
          productName: "Bomber Jackets",
          price1: "30.0 YER",
          price2: "49.9 YER",
          color: "Color: Black",
          size: "Size: L",
          quantity: "Qty:x1"),
      Productdetails4ItemModel(
          productImage: ImageConstant.imgRectangle163,
          productName: "Bomber Jackets",
          color: "Color: Black",
          size: "Size: L",
          quantity: "Qty:x1")
    ];
  }
}
