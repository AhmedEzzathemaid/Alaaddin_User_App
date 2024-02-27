import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/view_item_model.dart';
import '../models/deliverypoints_item_model.dart';
import '../models/rectangle7_item_model.dart';
import '../models/productlist11_item_model.dart';
import 'package:abdelhamed_s_application9/presentation/fifty_screen/models/fifty_model.dart';
part 'fifty_event.dart';
part 'fifty_state.dart';

/// A bloc that manages the state of a Fifty according to the event that is dispatched to it.
class FiftyBloc extends Bloc<FiftyEvent, FiftyState> {
  FiftyBloc(FiftyState initialState) : super(initialState) {
    on<FiftyInitialEvent>(_onInitialize);
  }

  List<ViewItemModel> fillViewItemList() {
    return List.generate(2, (index) => ViewItemModel());
  }

  List<DeliverypointsItemModel> fillDeliverypointsItemList() {
    return [
      DeliverypointsItemModel(
          icon: ImageConstant.imgGroup118,
          deliveryPoints: "Delivery points",
          duration: "within 2 days",
          additionalText: "+50 YER"),
      DeliverypointsItemModel(
          icon: ImageConstant.imgGroup1000001070,
          deliveryPoints: "By courier",
          duration: "within 4 days",
          additionalText: "+70 YER")
    ];
  }

  List<Rectangle7ItemModel> fillRectangle7ItemList() {
    return [
      Rectangle7ItemModel(rectangle: ImageConstant.imgRectangle22418),
      Rectangle7ItemModel(rectangle: ImageConstant.imgRectangle22419)
    ];
  }

  List<Productlist11ItemModel> fillProductlist11ItemList() {
    return [
      Productlist11ItemModel(
          productImage: ImageConstant.imgRectangle224263,
          productName: "30%",
          categoryTitle: "Bomber Jackets",
          price30: "30.0 YER",
          price499: "49.9YER"),
      Productlist11ItemModel(
          productImage: ImageConstant.imgRectangle224264,
          productName: "20%",
          categoryTitle: "Bomber Jackets",
          price30: "30.0 YER",
          price499: "49.9YER"),
      Productlist11ItemModel(
          productImage: ImageConstant.imgRectangle224263,
          productName: "30%",
          categoryTitle: "Bomber Jackets",
          price30: "30.0 YER",
          price499: "49.9YER")
    ];
  }

  _onInitialize(
    FiftyInitialEvent event,
    Emitter<FiftyState> emit,
  ) async {
    emit(state.copyWith(
      characteristicsController: TextEditingController(),
      ratingsreviewsController: TextEditingController(),
      sliderIndex: 0,
    ));
    emit(state.copyWith(
        fiftyModelObj: state.fiftyModelObj?.copyWith(
      viewItemList: fillViewItemList(),
      deliverypointsItemList: fillDeliverypointsItemList(),
      rectangle7ItemList: fillRectangle7ItemList(),
      productlist11ItemList: fillProductlist11ItemList(),
    )));
  }
}
