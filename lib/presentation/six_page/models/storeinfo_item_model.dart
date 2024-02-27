import '../../../core/app_export.dart';/// This class is used in the [storeinfo_item_widget] screen.
class StoreinfoItemModel {StoreinfoItemModel({this.storeImage, this.storeName, this.distance, this.rating, this.numRatings, this.id, }) { storeImage = storeImage  ?? ImageConstant.imgRectangle30;storeName = storeName  ?? "El Nor Store";distance = distance  ?? "1.2 KM";rating = rating  ?? "4.8";numRatings = numRatings  ?? "-574 Ratings";id = id  ?? ""; }

String? storeImage;

String? storeName;

String? distance;

String? rating;

String? numRatings;

String? id;

 }
