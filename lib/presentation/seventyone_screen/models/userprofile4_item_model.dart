import '../../../core/app_export.dart';/// This class is used in the [userprofile4_item_widget] screen.
class Userprofile4ItemModel {Userprofile4ItemModel({this.settings, this.userName, this.ratingText, this.ratingCount, this.distance, this.id, }) { settings = settings  ?? ImageConstant.imgSettingsWhiteA700;userName = userName  ?? "El Noor";ratingText = ratingText  ?? "4.5";ratingCount = ratingCount  ?? "-235 Ratings";distance = distance  ?? "1.2 KM";id = id  ?? ""; }

String? settings;

String? userName;

String? ratingText;

String? ratingCount;

String? distance;

String? id;

 }
