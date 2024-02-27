import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/dynamicmenu_item_model.dart';
import '../models/widget2_item_model.dart';
import '../models/widget3_item_model.dart';
import '../models/userprofile_item_model.dart';
import '../models/rectangle2_item_model.dart';
import '../models/rectangle3_item_model.dart';
import 'package:abdelhamed_s_application9/presentation/eight_screen/models/eight_model.dart';
part 'eight_event.dart';
part 'eight_state.dart';

/// A bloc that manages the state of a Eight according to the event that is dispatched to it.
class EightBloc extends Bloc<EightEvent, EightState> {
  EightBloc(EightState initialState) : super(initialState) {
    on<EightInitialEvent>(_onInitialize);
  }

  List<DynamicmenuItemModel> fillDynamicmenuItemList() {
    return List.generate(1, (index) => DynamicmenuItemModel());
  }

  List<Widget2ItemModel> fillWidget2ItemList() {
    return [
      Widget2ItemModel(
          image1: ImageConstant.img007Stethoscope,
          image2: ImageConstant.img007Stethoscope,
          image3: ImageConstant.imgGridWhiteA70056x56,
          text1: "Men"),
      Widget2ItemModel(image3: ImageConstant.imgTelevision, text1: "Decore"),
      Widget2ItemModel(text1: "Women")
    ];
  }

  List<Widget3ItemModel> fillWidget3ItemList() {
    return [
      Widget3ItemModel(
          image13: ImageConstant.img013Care2,
          image14: ImageConstant.imgSettingsWhiteA70056x56,
          text6: "Bags"),
      Widget3ItemModel(
          image13: ImageConstant.img028Bandage,
          image14: ImageConstant.imgTelevisionWhiteA70056x56,
          text6: "Mobile"),
      Widget3ItemModel(
          image13: ImageConstant.imgEdit,
          image14: ImageConstant.imgTelevision56x56,
          text6: "Beauty")
    ];
  }

  List<UserprofileItemModel> fillUserprofileItemList() {
    return [
      UserprofileItemModel(
          storeImage: ImageConstant.imgRectangle30,
          storeName: "El Nor Store",
          itemCount: "154 Items",
          distance: "1.2 KM"),
      UserprofileItemModel(
          storeImage: ImageConstant.imgRectangle31,
          storeName: "El Hoda Store",
          itemCount: "95 Items",
          distance: "1.9 KM")
    ];
  }

  List<Rectangle2ItemModel> fillRectangle2ItemList() {
    return [
      Rectangle2ItemModel(rectangle: ImageConstant.imgRectangle19),
      Rectangle2ItemModel(rectangle: ImageConstant.imgRectangle60)
    ];
  }

  List<Rectangle3ItemModel> fillRectangle3ItemList() {
    return [
      Rectangle3ItemModel(rectangle: ImageConstant.imgRectangle224265),
      Rectangle3ItemModel(rectangle: ImageConstant.imgRectangle224266)
    ];
  }

  _onInitialize(
    EightInitialEvent event,
    Emitter<EightState> emit,
  ) async {
    emit(state.copyWith(
      searchController: TextEditingController(),
      sliderIndex: 0,
    ));
    emit(state.copyWith(
        eightModelObj: state.eightModelObj?.copyWith(
      dynamicmenuItemList: fillDynamicmenuItemList(),
      widget2ItemList: fillWidget2ItemList(),
      widget3ItemList: fillWidget3ItemList(),
      userprofileItemList: fillUserprofileItemList(),
      rectangle2ItemList: fillRectangle2ItemList(),
      rectangle3ItemList: fillRectangle3ItemList(),
    )));
  }
}
