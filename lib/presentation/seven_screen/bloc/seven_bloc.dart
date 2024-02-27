import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/navigationmenu1_item_model.dart';
import '../models/widget_item_model.dart';
import '../models/widget1_item_model.dart';
import '../models/storeinfo1_item_model.dart';
import '../models/rectangle1_item_model.dart';
import '../models/productlist3_item_model.dart';
import '../models/productlist4_item_model.dart';
import 'package:abdelhamed_s_application9/presentation/seven_screen/models/seven_model.dart';
part 'seven_event.dart';
part 'seven_state.dart';

/// A bloc that manages the state of a Seven according to the event that is dispatched to it.
class SevenBloc extends Bloc<SevenEvent, SevenState> {
  SevenBloc(SevenState initialState) : super(initialState) {
    on<SevenInitialEvent>(_onInitialize);
  }

  List<Navigationmenu1ItemModel> fillNavigationmenu1ItemList() {
    return List.generate(1, (index) => Navigationmenu1ItemModel());
  }

  List<WidgetItemModel> fillWidgetItemList() {
    return [
      WidgetItemModel(
          image1: ImageConstant.img007Stethoscope,
          image2: ImageConstant.img007Stethoscope,
          image3: ImageConstant.imgGridWhiteA70056x56,
          text1: "Men"),
      WidgetItemModel(image3: ImageConstant.imgTelevision, text1: "Decore"),
      WidgetItemModel(text1: "Women")
    ];
  }

  List<Widget1ItemModel> fillWidget1ItemList() {
    return [
      Widget1ItemModel(
          image13: ImageConstant.img013Care2,
          image14: ImageConstant.imgSettingsWhiteA70056x56,
          text6: "Bags"),
      Widget1ItemModel(
          image13: ImageConstant.img028Bandage,
          image14: ImageConstant.imgTelevisionWhiteA70056x56,
          text6: "Mobile"),
      Widget1ItemModel(
          image13: ImageConstant.imgEdit,
          image14: ImageConstant.imgTelevision56x56,
          text6: "Beauty")
    ];
  }

  List<Storeinfo1ItemModel> fillStoreinfo1ItemList() {
    return [
      Storeinfo1ItemModel(
          storeImage: ImageConstant.imgRectangle30,
          storeName: "El Nor Store",
          itemCount: "154 Items",
          distance: "1.2 KM"),
      Storeinfo1ItemModel(
          storeImage: ImageConstant.imgRectangle31,
          storeName: "El Hoda Store",
          itemCount: "95 Items",
          distance: "1.9 KM")
    ];
  }

  List<Rectangle1ItemModel> fillRectangle1ItemList() {
    return [
      Rectangle1ItemModel(rectangle: ImageConstant.imgRectangle19),
      Rectangle1ItemModel(rectangle: ImageConstant.imgRectangle60)
    ];
  }

  List<Productlist3ItemModel> fillProductlist3ItemList() {
    return [
      Productlist3ItemModel(
          productImage: ImageConstant.imgRectangle22426,
          productTitle: "20%",
          categoryTitle: "Bomber Jackets",
          price1: "30.0 YER",
          price2: "49.9YER"),
      Productlist3ItemModel(
          productImage: ImageConstant.imgRectangle22426190x160,
          categoryTitle: "Bomber Jackets"),
      Productlist3ItemModel(
          productImage: ImageConstant.imgRectangle22426,
          productTitle: "20%",
          categoryTitle: "Bomber Jackets",
          price1: "30.0 YER",
          price2: "49.9YER")
    ];
  }

  List<Productlist4ItemModel> fillProductlist4ItemList() {
    return [
      Productlist4ItemModel(
          productImage: ImageConstant.imgRectangle224261,
          productTitle: "20%",
          supportHeart: ImageConstant.imgSupportHeart,
          categoryTitle: "Bomber Jackets",
          price1: "30.0 YER",
          price2: "49.9YER"),
      Productlist4ItemModel(
          productImage: ImageConstant.imgRectangle224262,
          categoryTitle: "Bomber Jackets"),
      Productlist4ItemModel(
          productImage: ImageConstant.imgRectangle224261,
          productTitle: "20%",
          supportHeart: ImageConstant.imgSupportHeart,
          categoryTitle: "Bomber Jackets",
          price1: "30.0 YER",
          price2: "49.9YER")
    ];
  }

  _onInitialize(
    SevenInitialEvent event,
    Emitter<SevenState> emit,
  ) async {
    emit(state.copyWith(
      searchController: TextEditingController(),
      sliderIndex: 0,
    ));
    emit(state.copyWith(
        sevenModelObj: state.sevenModelObj?.copyWith(
      navigationmenu1ItemList: fillNavigationmenu1ItemList(),
      widgetItemList: fillWidgetItemList(),
      widget1ItemList: fillWidget1ItemList(),
      storeinfo1ItemList: fillStoreinfo1ItemList(),
      rectangle1ItemList: fillRectangle1ItemList(),
      productlist3ItemList: fillProductlist3ItemList(),
      productlist4ItemList: fillProductlist4ItemList(),
    )));
  }
}
