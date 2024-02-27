import '../../../core/app_export.dart';/// This class is used in the [storeinfo6_item_widget] screen.
class Storeinfo6ItemModel {Storeinfo6ItemModel({this.storeImage, this.storeName, this.ratingText, this.ratingCount, this.distance, this.id, }) { storeImage = storeImage  ?? ImageConstant.imgRectangle30;storeName = storeName  ?? "El Nor Store";ratingText = ratingText  ?? "4.8";ratingCount = ratingCount  ?? "-574 Ratings";distance = distance  ?? "1.2 KM";id = id  ?? ""; }

String? storeImage;

String? storeName;

String? ratingText;

String? ratingCount;

String? distance;

String? id;

 }
