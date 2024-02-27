import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/productlist15_item_model.dart';
import 'package:abdelhamed_s_application9/presentation/fiftynine_page/models/fiftynine_model.dart';
part 'fiftynine_event.dart';
part 'fiftynine_state.dart';

/// A bloc that manages the state of a Fiftynine according to the event that is dispatched to it.
class FiftynineBloc extends Bloc<FiftynineEvent, FiftynineState> {
  FiftynineBloc(FiftynineState initialState) : super(initialState) {
    on<FiftynineInitialEvent>(_onInitialize);
  }

  _onInitialize(
    FiftynineInitialEvent event,
    Emitter<FiftynineState> emit,
  ) async {
    emit(state.copyWith(
        fiftynineModelObj: state.fiftynineModelObj?.copyWith(
      productlist15ItemList: fillProductlist15ItemList(),
    )));
  }

  List<Productlist15ItemModel> fillProductlist15ItemList() {
    return [
      Productlist15ItemModel(
          productImage: ImageConstant.imgRectangle22426190x160,
          bomberJackets: "Bomber Jackets",
          price: "49.0 YER"),
      Productlist15ItemModel(
          productImage: ImageConstant.imgRectangle22426,
          bomberJackets: "Bomber Jackets"),
      Productlist15ItemModel(
          productImage: ImageConstant.imgRectangle224261,
          bomberJackets: "Bomber Jackets"),
      Productlist15ItemModel(
          productImage: ImageConstant.imgRectangle224262,
          bomberJackets: "Bomber Jackets",
          price: "49.0 YER")
    ];
  }
}
