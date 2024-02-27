import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/view2_item_model.dart';
import '../models/s22_item_model.dart';
import '../models/deliverypointscomponent1_item_model.dart';
import '../models/rectangle9_item_model.dart';
import '../models/productlist13_item_model.dart';
import 'package:abdelhamed_s_application9/presentation/fiftytwo_screen/models/fiftytwo_model.dart';
part 'fiftytwo_event.dart';
part 'fiftytwo_state.dart';

/// A bloc that manages the state of a Fiftytwo according to the event that is dispatched to it.
class FiftytwoBloc extends Bloc<FiftytwoEvent, FiftytwoState> {
  FiftytwoBloc(FiftytwoState initialState) : super(initialState) {
    on<FiftytwoInitialEvent>(_onInitialize);
    on<ChangeDropDownEvent>(_changeDropDown);
    on<UpdateChipViewEvent>(_updateChipView);
  }

  _changeDropDown(
    ChangeDropDownEvent event,
    Emitter<FiftytwoState> emit,
  ) {
    emit(state.copyWith(
      selectedDropDownValue: event.value,
    ));
  }

  _updateChipView(
    UpdateChipViewEvent event,
    Emitter<FiftytwoState> emit,
  ) {
    List<S22ItemModel> newList =
        List<S22ItemModel>.from(state.fiftytwoModelObj!.s22ItemList);
    newList[event.index] = newList[event.index].copyWith(
      isSelected: event.isSelected,
    );
    emit(state.copyWith(
        fiftytwoModelObj:
            state.fiftytwoModelObj?.copyWith(s22ItemList: newList)));
  }

  List<View2ItemModel> fillView2ItemList() {
    return List.generate(2, (index) => View2ItemModel());
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

  List<S22ItemModel> fillS22ItemList() {
    return List.generate(5, (index) => S22ItemModel());
  }

  List<Deliverypointscomponent1ItemModel>
      fillDeliverypointscomponent1ItemList() {
    return [
      Deliverypointscomponent1ItemModel(
          iconButton: ImageConstant.imgGroup118,
          deliveryPointsText: "Delivery points",
          within2DaysText: "within 2 days",
          plus50YERText: "+50 YER"),
      Deliverypointscomponent1ItemModel(
          iconButton: ImageConstant.imgGroup1000001070,
          deliveryPointsText: "By courier",
          within2DaysText: "within 4 days",
          plus50YERText: "+70 YER"),
      Deliverypointscomponent1ItemModel(
          deliveryPointsText: "Added to compare list",
          within2DaysText: "See all")
    ];
  }

  List<Rectangle9ItemModel> fillRectangle9ItemList() {
    return [
      Rectangle9ItemModel(rectangle: ImageConstant.imgRectangle22418),
      Rectangle9ItemModel(rectangle: ImageConstant.imgRectangle22419)
    ];
  }

  List<Productlist13ItemModel> fillProductlist13ItemList() {
    return [
      Productlist13ItemModel(
          productImage: ImageConstant.imgRectangle224263,
          productName: "30%",
          categoryTitle: "Bomber Jackets",
          price1: "30.0 YER",
          price2: "49.9YER"),
      Productlist13ItemModel(
          productImage: ImageConstant.imgRectangle224264,
          productName: "20%",
          categoryTitle: "Bomber Jackets",
          price1: "30.0 YER",
          price2: "49.9YER"),
      Productlist13ItemModel(
          productImage: ImageConstant.imgRectangle224263,
          productName: "30%",
          categoryTitle: "Bomber Jackets",
          price1: "30.0 YER",
          price2: "49.9YER")
    ];
  }

  _onInitialize(
    FiftytwoInitialEvent event,
    Emitter<FiftytwoState> emit,
  ) async {
    emit(state.copyWith(
      characteristicsController: TextEditingController(),
      ratingsreviewsController: TextEditingController(),
      sliderIndex: 0,
    ));
    emit(state.copyWith(
        fiftytwoModelObj: state.fiftytwoModelObj?.copyWith(
      view2ItemList: fillView2ItemList(),
      dropdownItemList: fillDropdownItemList(),
      s22ItemList: fillS22ItemList(),
      deliverypointscomponent1ItemList: fillDeliverypointscomponent1ItemList(),
      rectangle9ItemList: fillRectangle9ItemList(),
      productlist13ItemList: fillProductlist13ItemList(),
    )));
  }
}
