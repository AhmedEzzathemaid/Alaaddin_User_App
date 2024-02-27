import '../../../core/app_export.dart';/// This class is used in the [storeinfo7_item_widget] screen.
class Storeinfo7ItemModel {Storeinfo7ItemModel({this.storeImage, this.elNorStore, this.ratingText, this.ratingCount, this.distance, this.supportHeart, this.id, }) { storeImage = storeImage  ?? ImageConstant.imgRectangle3052x52;elNorStore = elNorStore  ?? "El Nor Store";ratingText = ratingText  ?? "4.8";ratingCount = ratingCount  ?? "-574 Ratings";distance = distance  ?? "1.2 KM";supportHeart = supportHeart  ?? ImageConstant.imgSupportHeartBlack900;id = id  ?? ""; }

String? storeImage;

String? elNorStore;

String? ratingText;

String? ratingCount;

String? distance;

String? supportHeart;

String? id;

 }
