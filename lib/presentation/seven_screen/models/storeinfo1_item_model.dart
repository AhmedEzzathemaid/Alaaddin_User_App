import '../../../core/app_export.dart';/// This class is used in the [storeinfo1_item_widget] screen.
class Storeinfo1ItemModel {Storeinfo1ItemModel({this.storeImage, this.storeName, this.itemCount, this.distance, this.id, }) { storeImage = storeImage  ?? ImageConstant.imgRectangle30;storeName = storeName  ?? "El Nor Store";itemCount = itemCount  ?? "154 Items";distance = distance  ?? "1.2 KM";id = id  ?? ""; }

String? storeImage;

String? storeName;

String? itemCount;

String? distance;

String? id;

 }
