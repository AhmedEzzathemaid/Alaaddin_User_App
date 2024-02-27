import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/productdetails5_item_model.dart';
import 'package:abdelhamed_s_application9/presentation/onehundredtwentyfive_screen/models/onehundredtwentyfive_model.dart';
part 'onehundredtwentyfive_event.dart';
part 'onehundredtwentyfive_state.dart';

/// A bloc that manages the state of a Onehundredtwentyfive according to the event that is dispatched to it.
class OnehundredtwentyfiveBloc
    extends Bloc<OnehundredtwentyfiveEvent, OnehundredtwentyfiveState> {
  OnehundredtwentyfiveBloc(OnehundredtwentyfiveState initialState)
      : super(initialState) {
    on<OnehundredtwentyfiveInitialEvent>(_onInitialize);
  }

  _onInitialize(
    OnehundredtwentyfiveInitialEvent event,
    Emitter<OnehundredtwentyfiveState> emit,
  ) async {
    emit(state.copyWith(
        onehundredtwentyfiveModelObj:
            state.onehundredtwentyfiveModelObj?.copyWith(
      productdetails5ItemList: fillProductdetails5ItemList(),
    )));
  }

  List<Productdetails5ItemModel> fillProductdetails5ItemList() {
    return [
      Productdetails5ItemModel(
          productImage: ImageConstant.imgRectangle1685x85,
          productName: "Bomber Jackets",
          price1: "30.0 YER",
          price2: "49.9 YER",
          color: "Color: Black",
          size: "Size: L",
          quantity: "Qty:x1"),
      Productdetails5ItemModel(
          productImage: ImageConstant.imgRectangle163,
          productName: "Bomber Jackets",
          color: "Color: Black",
          size: "Size: L",
          quantity: "Qty:x1")
    ];
  }
}
