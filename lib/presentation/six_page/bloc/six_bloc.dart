import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/navigationmenu_item_model.dart';
import '../models/mentext_item_model.dart';
import '../models/bagstext_item_model.dart';
import '../models/storeinfo_item_model.dart';
import '../models/rectangle_item_model.dart';
import '../models/productlist_item_model.dart';
import '../models/productlist1_item_model.dart';
import '../models/productlist2_item_model.dart';
import 'package:abdelhamed_s_application9/presentation/six_page/models/six_model.dart';
part 'six_event.dart';
part 'six_state.dart';

/// A bloc that manages the state of a Six according to the event that is dispatched to it.
class SixBloc extends Bloc<SixEvent, SixState> {
  SixBloc(SixState initialState) : super(initialState) {
    on<SixInitialEvent>(_onInitialize);
  }

  List<NavigationmenuItemModel> fillNavigationmenuItemList() {
    return List.generate(1, (index) => NavigationmenuItemModel());
  }

  List<MentextItemModel> fillMentextItemList() {
    return [
      MentextItemModel(
          stethoscopeImage: ImageConstant.img007Stethoscope,
          stethoscopeImage1: ImageConstant.img007Stethoscope,
          gridImage: ImageConstant.imgGridWhiteA70056x56,
          menText: "Men"),
      MentextItemModel(
          gridImage: ImageConstant.imgTelevision, menText: "Decore"),
      MentextItemModel(menText: "Women")
    ];
  }

  List<BagstextItemModel> fillBagstextItemList() {
    return [
      BagstextItemModel(
          careImage: ImageConstant.img013Care2,
          settingsImage: ImageConstant.imgSettingsWhiteA70056x56,
          bagsText: "Bags"),
      BagstextItemModel(
          careImage: ImageConstant.img028Bandage,
          settingsImage: ImageConstant.imgTelevisionWhiteA70056x56,
          bagsText: "Mobile"),
      BagstextItemModel(
          careImage: ImageConstant.imgEdit,
          settingsImage: ImageConstant.imgTelevision56x56,
          bagsText: "Beauty")
    ];
  }

  List<StoreinfoItemModel> fillStoreinfoItemList() {
    return [
      StoreinfoItemModel(
          storeImage: ImageConstant.imgRectangle30,
          storeName: "El Nor Store",
          distance: "1.2 KM",
          rating: "4.8",
          numRatings: "-574 Ratings"),
      StoreinfoItemModel(
          storeImage: ImageConstant.imgRectangle31,
          storeName: "El Hoda Store",
          distance: "1.2 KM",
          rating: "4.8",
          numRatings: "-574 Ratings")
    ];
  }

  List<RectangleItemModel> fillRectangleItemList() {
    return [
      RectangleItemModel(rectangle: ImageConstant.imgRectangle19),
      RectangleItemModel(rectangle: ImageConstant.imgRectangle60)
    ];
  }

  List<ProductlistItemModel> fillProductlistItemList() {
    return [
      ProductlistItemModel(
          productImage: ImageConstant.imgRectangle22426,
          productTitle: "20%",
          categoryTitle: "Bomber Jackets",
          price1: "30.0 YER",
          price2: "49.9YER"),
      ProductlistItemModel(
          productImage: ImageConstant.imgRectangle22426190x160,
          categoryTitle: "Bomber Jackets"),
      ProductlistItemModel(
          productImage: ImageConstant.imgRectangle22426,
          productTitle: "20%",
          categoryTitle: "Bomber Jackets",
          price1: "30.0 YER",
          price2: "49.9YER")
    ];
  }

  List<Productlist1ItemModel> fillProductlist1ItemList() {
    return [
      Productlist1ItemModel(
          image: ImageConstant.imgRectangle224261,
          title: "20%",
          supportHeart: ImageConstant.imgSupportHeart,
          category: "Bomber Jackets",
          price1: "30.0 YER",
          price2: "49.9YER"),
      Productlist1ItemModel(
          image: ImageConstant.imgRectangle224262, category: "Bomber Jackets"),
      Productlist1ItemModel(
          image: ImageConstant.imgRectangle224261,
          title: "20%",
          supportHeart: ImageConstant.imgSupportHeart,
          category: "Bomber Jackets",
          price1: "30.0 YER",
          price2: "49.9YER")
    ];
  }

  List<Productlist2ItemModel> fillProductlist2ItemList() {
    return [
      Productlist2ItemModel(
          productImage: ImageConstant.imgRectangle224263,
          productTitle: "30%",
          bomberJackets: "Bomber Jackets",
          price1: "30.0 YER",
          price2: "49.9YER"),
      Productlist2ItemModel(
          productImage: ImageConstant.imgRectangle224264,
          productTitle: "20%",
          bomberJackets: "Bomber Jackets",
          price1: "30.0 YER",
          price2: "49.9YER"),
      Productlist2ItemModel(
          productImage: ImageConstant.imgRectangle224263,
          productTitle: "30%",
          bomberJackets: "Bomber Jackets",
          price1: "30.0 YER",
          price2: "49.9YER")
    ];
  }

  _onInitialize(
    SixInitialEvent event,
    Emitter<SixState> emit,
  ) async {
    emit(state.copyWith(
      searchController: TextEditingController(),
      sliderIndex: 0,
    ));
    emit(state.copyWith(
        sixModelObj: state.sixModelObj?.copyWith(
      navigationmenuItemList: fillNavigationmenuItemList(),
      mentextItemList: fillMentextItemList(),
      bagstextItemList: fillBagstextItemList(),
      storeinfoItemList: fillStoreinfoItemList(),
      rectangleItemList: fillRectangleItemList(),
      productlistItemList: fillProductlistItemList(),
      productlist1ItemList: fillProductlist1ItemList(),
      productlist2ItemList: fillProductlist2ItemList(),
    )));
  }
}
