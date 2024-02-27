import '../../../core/app_export.dart';/// This class is used in the [storeinfo4_item_widget] screen.
class Storeinfo4ItemModel {Storeinfo4ItemModel({this.storeImage, this.storeName, this.distance, this.ratingImage, this.rating, this.ratingCount, this.id, }) { storeImage = storeImage  ?? ImageConstant.imgRectangle30;storeName = storeName  ?? "El Nor Store";distance = distance  ?? "1.2 KM";ratingImage = ratingImage  ?? ImageConstant.imgSignal;rating = rating  ?? "4.8";ratingCount = ratingCount  ?? "-574 Ratings";id = id  ?? ""; }

String? storeImage;

String? storeName;

String? distance;

String? ratingImage;

String? rating;

String? ratingCount;

String? id;

 }
