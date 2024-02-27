import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/view1_item_model.dart';
import '../models/deliverypointscomponent_item_model.dart';
import '../models/rectangle8_item_model.dart';
import '../models/productlist12_item_model.dart';
import 'package:abdelhamed_s_application9/presentation/fiftyone_screen/models/fiftyone_model.dart';
part 'fiftyone_event.dart';
part 'fiftyone_state.dart';

/// A bloc that manages the state of a Fiftyone according to the event that is dispatched to it.
class FiftyoneBloc extends Bloc<FiftyoneEvent, FiftyoneState> {
  FiftyoneBloc(FiftyoneState initialState) : super(initialState) {
    on<FiftyoneInitialEvent>(_onInitialize);
    on<ChangeDropDownEvent>(_changeDropDown);
  }

  _changeDropDown(
    ChangeDropDownEvent event,
    Emitter<FiftyoneState> emit,
  ) {
    emit(state.copyWith(
      selectedDropDownValue: event.value,
    ));
  }

  List<View1ItemModel> fillView1ItemList() {
    return List.generate(2, (index) => View1ItemModel());
  }

  List<SelectionPopupModel> fillDropdownItemList() {
    return [
      SelectionPopupModel(
        id: 1,
        title: "Item One",
        isSelected: true,
      ),
      SelectionPopupModel(
        id: 2,
        title: "Item Two",
      ),
      SelectionPopupModel(
        id: 3,
        title: "Item Three",
      )
    ];
  }

  List<DeliverypointscomponentItemModel> fillDeliverypointscomponentItemList() {
    return [
      DeliverypointscomponentItemModel(
          iconButton: ImageConstant.imgGroup118,
          deliveryPoints: "Delivery points",
          duration: "within 2 days",
          price: "+50 YER"),
      DeliverypointscomponentItemModel(
          iconButton: ImageConstant.imgGroup1000001070,
          deliveryPoints: "By courier",
          duration: "within 4 days",
          price: "+70 YER")
    ];
  }

  List<Rectangle8ItemModel> fillRectangle8ItemList() {
    return [
      Rectangle8ItemModel(rectangle: ImageConstant.imgRectangle22418),
      Rectangle8ItemModel(rectangle: ImageConstant.imgRectangle22419)
    ];
  }

  List<Productlist12ItemModel> fillProductlist12ItemList() {
    return [
      Productlist12ItemModel(
          productImage: ImageConstant.imgRectangle224263,
          productTitle: "30%",
          categoryTitle: "Bomber Jackets",
          price1: "30.0 YER",
          price2: "49.9YER"),
      Productlist12ItemModel(
          productImage: ImageConstant.imgRectangle224264,
          productTitle: "20%",
          categoryTitle: "Bomber Jackets",
          price1: "30.0 YER",
          price2: "49.9YER"),
      Productlist12ItemModel(
          productImage: ImageConstant.imgRectangle224263,
          productTitle: "30%",
          categoryTitle: "Bomber Jackets",
          price1: "30.0 YER",
          price2: "49.9YER")
    ];
  }

  _onInitialize(
    FiftyoneInitialEvent event,
    Emitter<FiftyoneState> emit,
  ) async {
    emit(state.copyWith(
      characteristicsController: TextEditingController(),
      ratingsreviewsController: TextEditingController(),
      sliderIndex: 0,
    ));
    emit(state.copyWith(
        fiftyoneModelObj: state.fiftyoneModelObj?.copyWith(
      view1ItemList: fillView1ItemList(),
      dropdownItemList: fillDropdownItemList(),
      deliverypointscomponentItemList: fillDeliverypointscomponentItemList(),
      rectangle8ItemList: fillRectangle8ItemList(),
      productlist12ItemList: fillProductlist12ItemList(),
    )));
  }
}
