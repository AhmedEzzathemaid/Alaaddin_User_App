import '../../../core/app_export.dart';/// This class is used in the [deliverypoints_item_widget] screen.
class DeliverypointsItemModel {DeliverypointsItemModel({this.icon, this.deliveryPoints, this.duration, this.additionalText, this.id, }) { icon = icon  ?? ImageConstant.imgGroup118;deliveryPoints = deliveryPoints  ?? "Delivery points";duration = duration  ?? "within 2 days";additionalText = additionalText  ?? "+50 YER";id = id  ?? ""; }

String? icon;

String? deliveryPoints;

String? duration;

String? additionalText;

String? id;

 }
