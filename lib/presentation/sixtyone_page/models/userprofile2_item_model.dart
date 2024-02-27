import '../../../core/app_export.dart';/// This class is used in the [userprofile2_item_widget] screen.
class Userprofile2ItemModel {Userprofile2ItemModel({this.settings, this.elNoor, this.fortyFive, this.ratings, this.distance, this.id, }) { settings = settings  ?? ImageConstant.imgSettingsWhiteA700;elNoor = elNoor  ?? "El Noor";fortyFive = fortyFive  ?? "4.5";ratings = ratings  ?? "-235 Ratings";distance = distance  ?? "1.2 KM";id = id  ?? ""; }

String? settings;

String? elNoor;

String? fortyFive;

String? ratings;

String? distance;

String? id;

 }
