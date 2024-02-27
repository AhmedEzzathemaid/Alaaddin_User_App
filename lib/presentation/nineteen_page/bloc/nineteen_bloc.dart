import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/productcard_item_model.dart';
import 'package:abdelhamed_s_application9/presentation/nineteen_page/models/nineteen_model.dart';
part 'nineteen_event.dart';
part 'nineteen_state.dart';

/// A bloc that manages the state of a Nineteen according to the event that is dispatched to it.
class NineteenBloc extends Bloc<NineteenEvent, NineteenState> {
  NineteenBloc(NineteenState initialState) : super(initialState) {
    on<NineteenInitialEvent>(_onInitialize);
  }

  _onInitialize(
    NineteenInitialEvent event,
    Emitter<NineteenState> emit,
  ) async {
    emit(state.copyWith(
        nineteenModelObj: state.nineteenModelObj?.copyWith(
      productcardItemList: fillProductcardItemList(),
    )));
  }

  List<ProductcardItemModel> fillProductcardItemList() {
    return [
      ProductcardItemModel(
          image: ImageConstant.imgRectangle2242688x74,
          title: "Bomber Jackets",
          price1: "30.0 YER",
          price2: "49.9YER",
          discount: "20%"),
      ProductcardItemModel(
          image: ImageConstant.imgRectangle224269,
          title: "Bomber Jackets",
          price1: "30.0 YER",
          price2: "49.9YER",
          discount: "20%"),
      ProductcardItemModel(
          image: ImageConstant.imgRectangle2242611,
          title: "Bomber Jackets",
          price1: "30.0 YER",
          price2: "49.9YER",
          discount: "20%")
    ];
  }
}
