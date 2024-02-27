import '../../../core/app_export.dart';/// This class is used in the [icphysician_item_widget] screen.
class IcphysicianItemModel {IcphysicianItemModel({this.bagImage, this.settingsImage, this.bagText, this.id, }) { bagImage = bagImage  ?? ImageConstant.img013Care2;settingsImage = settingsImage  ?? ImageConstant.imgSettingsWhiteA70056x56;bagText = bagText  ?? "Bags";id = id  ?? ""; }

String? bagImage;

String? settingsImage;

String? bagText;

String? id;

 }
