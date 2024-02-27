import '../../../core/app_export.dart';/// This class is used in the [deliverypointscomponent_item_widget] screen.
class DeliverypointscomponentItemModel {DeliverypointscomponentItemModel({this.iconButton, this.deliveryPoints, this.duration, this.price, this.id, }) { iconButton = iconButton  ?? ImageConstant.imgGroup118;deliveryPoints = deliveryPoints  ?? "Delivery points";duration = duration  ?? "within 2 days";price = price  ?? "+50 YER";id = id  ?? ""; }

String? iconButton;

String? deliveryPoints;

String? duration;

String? price;

String? id;

 }
