import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/productcard10_item_model.dart';
import 'package:abdelhamed_s_application9/presentation/onehundredseven_screen/models/onehundredseven_model.dart';
part 'onehundredseven_event.dart';
part 'onehundredseven_state.dart';

/// A bloc that manages the state of a Onehundredseven according to the event that is dispatched to it.
class OnehundredsevenBloc
    extends Bloc<OnehundredsevenEvent, OnehundredsevenState> {
  OnehundredsevenBloc(OnehundredsevenState initialState) : super(initialState) {
    on<OnehundredsevenInitialEvent>(_onInitialize);
  }

  _onInitialize(
    OnehundredsevenInitialEvent event,
    Emitter<OnehundredsevenState> emit,
  ) async {
    emit(state.copyWith(
        onehundredsevenModelObj: state.onehundredsevenModelObj?.copyWith(
      productcard10ItemList: fillProductcard10ItemList(),
    )));
  }

  List<Productcard10ItemModel> fillProductcard10ItemList() {
    return [
      Productcard10ItemModel(
          image: ImageConstant.imgRectangle1685x85,
          title: "Bomber Jackets",
          price: "30.0 YER",
          discountedPrice: "49.9 YER",
          color: "Color: Black",
          size: "Size: L",
          quantity: "Qty:x1"),
      Productcard10ItemModel(
          image: ImageConstant.imgRectangle163,
          title: "Bomber Jackets",
          color: "Color: Black",
          size: "Size: L",
          quantity: "Qty:x1")
    ];
  }
}
