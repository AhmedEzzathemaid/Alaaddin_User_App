import '../../../core/app_export.dart';/// This class is used in the [orderdetails1_item_widget] screen.
class Orderdetails1ItemModel {Orderdetails1ItemModel({this.orderNumber, this.productCount, this.totalAmount, this.deliveryTime, this.iconButton, this.deliveryPoint, this.deliveryTimeFrame, this.id, }) { orderNumber = orderNumber  ?? "#52156564320";productCount = productCount  ?? "products: 3";totalAmount = totalAmount  ?? "Total: 120.0 YER";deliveryTime = deliveryTime  ?? "22/01/2023 - 09:30 PM";iconButton = iconButton  ?? ImageConstant.imgGroup301;deliveryPoint = deliveryPoint  ?? "Delivery point";deliveryTimeFrame = deliveryTimeFrame  ?? "within 2 days";id = id  ?? ""; }

String? orderNumber;

String? productCount;

String? totalAmount;

String? deliveryTime;

String? iconButton;

String? deliveryPoint;

String? deliveryTimeFrame;

String? id;

 }
