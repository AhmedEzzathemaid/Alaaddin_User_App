import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/productcard2_item_model.dart';
import 'package:abdelhamed_s_application9/presentation/sixtythree_bottomsheet/models/sixtythree_model.dart';
part 'sixtythree_event.dart';
part 'sixtythree_state.dart';

/// A bloc that manages the state of a Sixtythree according to the event that is dispatched to it.
class SixtythreeBloc extends Bloc<SixtythreeEvent, SixtythreeState> {
  SixtythreeBloc(SixtythreeState initialState) : super(initialState) {
    on<SixtythreeInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SixtythreeInitialEvent event,
    Emitter<SixtythreeState> emit,
  ) async {
    emit(state.copyWith(
        sixtythreeModelObj: state.sixtythreeModelObj?.copyWith(
      productcard2ItemList: fillProductcard2ItemList(),
    )));
  }

  List<Productcard2ItemModel> fillProductcard2ItemList() {
    return [
      Productcard2ItemModel(
          image: ImageConstant.imgRectangle1685x85,
          title: "Bomber Jackets",
          price: "30.0 YER",
          discountedPrice: "49.9 YER",
          color: "Color: Black",
          size: "Size: L",
          quantity: "Qty:x1"),
      Productcard2ItemModel(
          image: ImageConstant.imgRectangle163,
          title: "Bomber Jackets",
          color: "Color: Black",
          size: "Size: L",
          quantity: "Qty:x1")
    ];
  }
}
