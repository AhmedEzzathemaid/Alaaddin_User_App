import '../../../core/app_export.dart';/// This class is used in the [bagstext_item_widget] screen.
class BagstextItemModel {BagstextItemModel({this.careImage, this.settingsImage, this.bagsText, this.id, }) { careImage = careImage  ?? ImageConstant.img013Care2;settingsImage = settingsImage  ?? ImageConstant.imgSettingsWhiteA70056x56;bagsText = bagsText  ?? "Bags";id = id  ?? ""; }

String? careImage;

String? settingsImage;

String? bagsText;

String? id;

 }
