import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/productcard9_item_model.dart';
import 'package:abdelhamed_s_application9/presentation/onehundredsix_screen/models/onehundredsix_model.dart';
part 'onehundredsix_event.dart';
part 'onehundredsix_state.dart';

/// A bloc that manages the state of a Onehundredsix according to the event that is dispatched to it.
class OnehundredsixBloc extends Bloc<OnehundredsixEvent, OnehundredsixState> {
  OnehundredsixBloc(OnehundredsixState initialState) : super(initialState) {
    on<OnehundredsixInitialEvent>(_onInitialize);
  }

  _onInitialize(
    OnehundredsixInitialEvent event,
    Emitter<OnehundredsixState> emit,
  ) async {
    emit(state.copyWith(
        onehundredsixModelObj: state.onehundredsixModelObj?.copyWith(
      productcard9ItemList: fillProductcard9ItemList(),
    )));
  }

  List<Productcard9ItemModel> fillProductcard9ItemList() {
    return [
      Productcard9ItemModel(
          image: ImageConstant.imgRectangle1685x85,
          title: "Bomber Jackets",
          price1: "30.0 YER",
          price2: "49.9 YER",
          color: "Color: Black",
          size: "Size: L",
          quantity: "Qty:x1"),
      Productcard9ItemModel(
          image: ImageConstant.imgRectangle163,
          title: "Bomber Jackets",
          color: "Color: Black",
          size: "Size: L",
          quantity: "Qty:x1")
    ];
  }
}
