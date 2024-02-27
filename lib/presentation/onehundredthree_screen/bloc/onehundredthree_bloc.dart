import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/productcard7_item_model.dart';
import 'package:abdelhamed_s_application9/presentation/onehundredthree_screen/models/onehundredthree_model.dart';
part 'onehundredthree_event.dart';
part 'onehundredthree_state.dart';

/// A bloc that manages the state of a Onehundredthree according to the event that is dispatched to it.
class OnehundredthreeBloc
    extends Bloc<OnehundredthreeEvent, OnehundredthreeState> {
  OnehundredthreeBloc(OnehundredthreeState initialState) : super(initialState) {
    on<OnehundredthreeInitialEvent>(_onInitialize);
  }

  List<Productcard7ItemModel> fillProductcard7ItemList() {
    return [
      Productcard7ItemModel(
          image: ImageConstant.imgRectangle1685x85,
          title: "Bomber Jackets",
          price: "30.0 YER",
          discountedPrice: "49.9 YER",
          color: "Color: Black",
          size: "Size: L",
          quantity: "Qty:x1"),
      Productcard7ItemModel(
          image: ImageConstant.imgRectangle163,
          title: "Bomber Jackets",
          color: "Color: Black",
          size: "Size: L",
          quantity: "Qty:x1")
    ];
  }

  _onInitialize(
    OnehundredthreeInitialEvent event,
    Emitter<OnehundredthreeState> emit,
  ) async {
    emit(state.copyWith(
      group2250Controller: TextEditingController(),
    ));
    emit(state.copyWith(
        onehundredthreeModelObj: state.onehundredthreeModelObj?.copyWith(
      productcard7ItemList: fillProductcard7ItemList(),
    )));
  }
}
