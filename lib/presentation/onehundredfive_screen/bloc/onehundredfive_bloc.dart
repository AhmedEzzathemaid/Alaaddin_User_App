import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/productcard8_item_model.dart';
import 'package:abdelhamed_s_application9/presentation/onehundredfive_screen/models/onehundredfive_model.dart';
part 'onehundredfive_event.dart';
part 'onehundredfive_state.dart';

/// A bloc that manages the state of a Onehundredfive according to the event that is dispatched to it.
class OnehundredfiveBloc
    extends Bloc<OnehundredfiveEvent, OnehundredfiveState> {
  OnehundredfiveBloc(OnehundredfiveState initialState) : super(initialState) {
    on<OnehundredfiveInitialEvent>(_onInitialize);
  }

  _onInitialize(
    OnehundredfiveInitialEvent event,
    Emitter<OnehundredfiveState> emit,
  ) async {
    emit(state.copyWith(
        onehundredfiveModelObj: state.onehundredfiveModelObj?.copyWith(
      productcard8ItemList: fillProductcard8ItemList(),
    )));
  }

  List<Productcard8ItemModel> fillProductcard8ItemList() {
    return [
      Productcard8ItemModel(
          image: ImageConstant.imgRectangle1685x85,
          title: "Bomber Jackets",
          price1: "30.0 YER",
          price2: "49.9 YER",
          color: "Color: Black",
          size: "Size: L",
          quantity: "Qty:x1"),
      Productcard8ItemModel(
          image: ImageConstant.imgRectangle163,
          title: "Bomber Jackets",
          color: "Color: Black",
          size: "Size: L",
          quantity: "Qty:x1")
    ];
  }
}
