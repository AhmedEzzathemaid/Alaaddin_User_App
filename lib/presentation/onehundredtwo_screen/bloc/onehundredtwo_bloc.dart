import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/productcard6_item_model.dart';
import 'package:abdelhamed_s_application9/presentation/onehundredtwo_screen/models/onehundredtwo_model.dart';
part 'onehundredtwo_event.dart';
part 'onehundredtwo_state.dart';

/// A bloc that manages the state of a Onehundredtwo according to the event that is dispatched to it.
class OnehundredtwoBloc extends Bloc<OnehundredtwoEvent, OnehundredtwoState> {
  OnehundredtwoBloc(OnehundredtwoState initialState) : super(initialState) {
    on<OnehundredtwoInitialEvent>(_onInitialize);
  }

  _onInitialize(
    OnehundredtwoInitialEvent event,
    Emitter<OnehundredtwoState> emit,
  ) async {
    emit(state.copyWith(
        onehundredtwoModelObj: state.onehundredtwoModelObj?.copyWith(
      productcard6ItemList: fillProductcard6ItemList(),
    )));
  }

  List<Productcard6ItemModel> fillProductcard6ItemList() {
    return [
      Productcard6ItemModel(
          image: ImageConstant.imgRectangle1685x85,
          title: "Bomber Jackets",
          price: "30.0 YER",
          discountedPrice: "49.9 YER",
          color: "Color: Black",
          size: "Size: L",
          quantity: "Qty:x1"),
      Productcard6ItemModel(
          image: ImageConstant.imgRectangle163,
          title: "Bomber Jackets",
          color: "Color: Black",
          size: "Size: L",
          quantity: "Qty:x1")
    ];
  }
}
