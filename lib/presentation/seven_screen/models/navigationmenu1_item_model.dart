import 'widget_item_model.dart';import 'widget1_item_model.dart';import '../../../core/app_export.dart';/// This class is used in the [navigationmenu1_item_widget] screen.
class Navigationmenu1ItemModel {Navigationmenu1ItemModel({this.widgetItemList, this.widget1ItemList, this.id, }) { widgetItemList = widgetItemList  ?? [WidgetItemModel(image1:ImageConstant.img007Stethoscope,image2:ImageConstant.img007Stethoscope,image3:ImageConstant.imgGridWhiteA70056x56,text1: "Men"),WidgetItemModel(image3:ImageConstant.imgTelevision,text1: "Decore"),WidgetItemModel(text1: "Women")];widget1ItemList = widget1ItemList  ?? [Widget1ItemModel(image13:ImageConstant.img013Care2,image14:ImageConstant.imgSettingsWhiteA70056x56,text6: "Bags"),Widget1ItemModel(image13:ImageConstant.img028Bandage,image14:ImageConstant.imgTelevisionWhiteA70056x56,text6: "Mobile"),Widget1ItemModel(image13:ImageConstant.imgEdit,image14:ImageConstant.imgTelevision56x56,text6: "Beauty")];id = id  ?? ""; }

List<WidgetItemModel>? widgetItemList;

List<Widget1ItemModel>? widget1ItemList;

String? id;

 }
