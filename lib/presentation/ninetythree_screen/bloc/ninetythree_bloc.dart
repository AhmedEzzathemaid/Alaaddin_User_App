import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/productcard4_item_model.dart';
import 'package:abdelhamed_s_application9/presentation/ninetythree_screen/models/ninetythree_model.dart';
part 'ninetythree_event.dart';
part 'ninetythree_state.dart';

/// A bloc that manages the state of a Ninetythree according to the event that is dispatched to it.
class NinetythreeBloc extends Bloc<NinetythreeEvent, NinetythreeState> {
  NinetythreeBloc(NinetythreeState initialState) : super(initialState) {
    on<NinetythreeInitialEvent>(_onInitialize);
  }

  List<Productcard4ItemModel> fillProductcard4ItemList() {
    return [
      Productcard4ItemModel(
          image: ImageConstant.imgRectangle1685x85,
          title: "Bomber Jackets",
          price: "30.0 YER",
          discountedPrice: "49.9 YER",
          color: "Color: Black",
          size: "Size: L",
          quantity: "Qty:x1"),
      Productcard4ItemModel(
          image: ImageConstant.imgRectangle163,
          title: "Bomber Jackets",
          color: "Color: Black",
          size: "Size: L",
          quantity: "Qty:x1")
    ];
  }

  _onInitialize(
    NinetythreeInitialEvent event,
    Emitter<NinetythreeState> emit,
  ) async {
    emit(state.copyWith(
      cashondeliveryOneController: TextEditingController(),
    ));
    emit(state.copyWith(
        ninetythreeModelObj: state.ninetythreeModelObj?.copyWith(
      productcard4ItemList: fillProductcard4ItemList(),
    )));
  }
}
