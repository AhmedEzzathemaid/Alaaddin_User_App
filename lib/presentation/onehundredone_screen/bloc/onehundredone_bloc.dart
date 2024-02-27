import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/productcard5_item_model.dart';
import 'package:abdelhamed_s_application9/presentation/onehundredone_screen/models/onehundredone_model.dart';
part 'onehundredone_event.dart';
part 'onehundredone_state.dart';

/// A bloc that manages the state of a Onehundredone according to the event that is dispatched to it.
class OnehundredoneBloc extends Bloc<OnehundredoneEvent, OnehundredoneState> {
  OnehundredoneBloc(OnehundredoneState initialState) : super(initialState) {
    on<OnehundredoneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    OnehundredoneInitialEvent event,
    Emitter<OnehundredoneState> emit,
  ) async {
    emit(state.copyWith(
        onehundredoneModelObj: state.onehundredoneModelObj?.copyWith(
      productcard5ItemList: fillProductcard5ItemList(),
    )));
  }

  List<Productcard5ItemModel> fillProductcard5ItemList() {
    return [
      Productcard5ItemModel(
          image: ImageConstant.imgRectangle1685x85,
          title: "Bomber Jackets",
          price: "30.0 YER",
          discountedPrice: "49.9 YER",
          color: "Color: Black",
          size: "Size: L",
          quantity: "Qty:x1"),
      Productcard5ItemModel(
          image: ImageConstant.imgRectangle163,
          title: "Bomber Jackets",
          color: "Color: Black",
          size: "Size: L",
          quantity: "Qty:x1")
    ];
  }
}
