import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/icphysician_item_model.dart';
import '../models/storeinfo2_item_model.dart';
import '../models/rectangle4_item_model.dart';
import '../models/viewhierarchy_item_model.dart';
import 'package:abdelhamed_s_application9/presentation/nine_screen/models/nine_model.dart';
part 'nine_event.dart';
part 'nine_state.dart';

/// A bloc that manages the state of a Nine according to the event that is dispatched to it.
class NineBloc extends Bloc<NineEvent, NineState> {
  NineBloc(NineState initialState) : super(initialState) {
    on<NineInitialEvent>(_onInitialize);
  }

  List<IcphysicianItemModel> fillIcphysicianItemList() {
    return [
      IcphysicianItemModel(
          bagImage: ImageConstant.img013Care2,
          settingsImage: ImageConstant.imgSettingsWhiteA70056x56,
          bagText: "Bags"),
      IcphysicianItemModel(
          bagImage: ImageConstant.img028Bandage,
          settingsImage: ImageConstant.imgTelevisionWhiteA70056x56,
          bagText: "Mobile"),
      IcphysicianItemModel(
          bagImage: ImageConstant.imgEdit,
          settingsImage: ImageConstant.imgTelevision56x56,
          bagText: "Beauty")
    ];
  }

  List<Storeinfo2ItemModel> fillStoreinfo2ItemList() {
    return [
      Storeinfo2ItemModel(
          storeImage: ImageConstant.imgRectangle30,
          storeName: "El Nor Store",
          itemCount: "154 Items",
          distance: "1.2 KM"),
      Storeinfo2ItemModel(
          storeImage: ImageConstant.imgRectangle31,
          storeName: "El Hoda Store",
          itemCount: "95 Items",
          distance: "1.9 KM")
    ];
  }

  List<Rectangle4ItemModel> fillRectangle4ItemList() {
    return [
      Rectangle4ItemModel(rectangle: ImageConstant.imgRectangle19),
      Rectangle4ItemModel(rectangle: ImageConstant.imgRectangle60)
    ];
  }

  List<ViewhierarchyItemModel> fillViewhierarchyItemList() {
    return [
      ViewhierarchyItemModel(
          image: ImageConstant.imgRectangle22426,
          text: "20%",
          icon: ImageConstant.imgSupportHeart,
          bomberJackets: "Bomber Jackets"),
      ViewhierarchyItemModel(
          image: ImageConstant.imgRectangle22426190x160,
          bomberJackets: "Bomber Jackets"),
      ViewhierarchyItemModel(
          image: ImageConstant.imgRectangle22426,
          text: "20%",
          icon: ImageConstant.imgSupportHeart,
          bomberJackets: "Bomber Jackets"),
      ViewhierarchyItemModel(bomberJackets: "49.9YER")
    ];
  }

  _onInitialize(
    NineInitialEvent event,
    Emitter<NineState> emit,
  ) async {
    emit(state.copyWith(
      searchController: TextEditingController(),
    ));
    emit(state.copyWith(
        nineModelObj: state.nineModelObj?.copyWith(
      icphysicianItemList: fillIcphysicianItemList(),
      storeinfo2ItemList: fillStoreinfo2ItemList(),
      rectangle4ItemList: fillRectangle4ItemList(),
      viewhierarchyItemList: fillViewhierarchyItemList(),
    )));
  }
}
