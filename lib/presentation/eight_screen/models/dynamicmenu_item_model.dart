import 'widget2_item_model.dart';import 'widget3_item_model.dart';import '../../../core/app_export.dart';/// This class is used in the [dynamicmenu_item_widget] screen.
class DynamicmenuItemModel {DynamicmenuItemModel({this.widget2ItemList, this.widget3ItemList, this.id, }) { widget2ItemList = widget2ItemList  ?? [Widget2ItemModel(image1:ImageConstant.img007Stethoscope,image2:ImageConstant.img007Stethoscope,image3:ImageConstant.imgGridWhiteA70056x56,text1: "Men"),Widget2ItemModel(image3:ImageConstant.imgTelevision,text1: "Decore"),Widget2ItemModel(text1: "Women")];widget3ItemList = widget3ItemList  ?? [Widget3ItemModel(image13:ImageConstant.img013Care2,image14:ImageConstant.imgSettingsWhiteA70056x56,text6: "Bags"),Widget3ItemModel(image13:ImageConstant.img028Bandage,image14:ImageConstant.imgTelevisionWhiteA70056x56,text6: "Mobile"),Widget3ItemModel(image13:ImageConstant.imgEdit,image14:ImageConstant.imgTelevision56x56,text6: "Beauty")];id = id  ?? ""; }

List<Widget2ItemModel>? widget2ItemList;

List<Widget3ItemModel>? widget3ItemList;

String? id;

 }
