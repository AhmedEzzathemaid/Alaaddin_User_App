import 'mentext_item_model.dart';import 'bagstext_item_model.dart';import '../../../core/app_export.dart';/// This class is used in the [navigationmenu_item_widget] screen.
class NavigationmenuItemModel {NavigationmenuItemModel({this.mentextItemList, this.bagstextItemList, this.id, }) { mentextItemList = mentextItemList  ?? [MentextItemModel(stethoscopeImage:ImageConstant.img007Stethoscope,stethoscopeImage1:ImageConstant.img007Stethoscope,gridImage:ImageConstant.imgGridWhiteA70056x56,menText: "Men"),MentextItemModel(gridImage:ImageConstant.imgTelevision,menText: "Decore"),MentextItemModel(menText: "Women")];bagstextItemList = bagstextItemList  ?? [BagstextItemModel(careImage:ImageConstant.img013Care2,settingsImage:ImageConstant.imgSettingsWhiteA70056x56,bagsText: "Bags"),BagstextItemModel(careImage:ImageConstant.img028Bandage,settingsImage:ImageConstant.imgTelevisionWhiteA70056x56,bagsText: "Mobile"),BagstextItemModel(careImage:ImageConstant.imgEdit,settingsImage:ImageConstant.imgTelevision56x56,bagsText: "Beauty")];id = id  ?? ""; }

List<MentextItemModel>? mentextItemList;

List<BagstextItemModel>? bagstextItemList;

String? id;

 }
