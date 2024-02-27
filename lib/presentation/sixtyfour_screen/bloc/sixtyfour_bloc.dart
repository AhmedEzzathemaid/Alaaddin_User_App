import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/productcard3_item_model.dart';
import 'package:abdelhamed_s_application9/presentation/sixtyfour_screen/models/sixtyfour_model.dart';
part 'sixtyfour_event.dart';
part 'sixtyfour_state.dart';

/// A bloc that manages the state of a Sixtyfour according to the event that is dispatched to it.
class SixtyfourBloc extends Bloc<SixtyfourEvent, SixtyfourState> {
  SixtyfourBloc(SixtyfourState initialState) : super(initialState) {
    on<SixtyfourInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SixtyfourInitialEvent event,
    Emitter<SixtyfourState> emit,
  ) async {
    emit(state.copyWith(
        sixtyfourModelObj: state.sixtyfourModelObj?.copyWith(
      productcard3ItemList: fillProductcard3ItemList(),
    )));
  }

  List<Productcard3ItemModel> fillProductcard3ItemList() {
    return [
      Productcard3ItemModel(
          image: ImageConstant.imgRectangle1685x85,
          title: "Bomber Jackets",
          price: "30.0 YER",
          discountedPrice: "49.9 YER",
          color: "Color: Black",
          size: "Size: L",
          quantity: "Qty:x1"),
      Productcard3ItemModel(
          image: ImageConstant.imgRectangle163,
          title: "Bomber Jackets",
          color: "Color: Black",
          size: "Size: L",
          quantity: "Qty:x1")
    ];
  }
}
