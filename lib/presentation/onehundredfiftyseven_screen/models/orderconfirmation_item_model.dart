import '../../../core/app_export.dart';/// This class is used in the [orderconfirmation_item_widget] screen.
class OrderconfirmationItemModel {OrderconfirmationItemModel({this.orderNumber, this.orderStatus, this.orderDateTime, this.orderImage, this.id, }) { orderNumber = orderNumber  ?? "#521452151";orderStatus = orderStatus  ?? "Your order has been approved";orderDateTime = orderDateTime  ?? "20/05/2023 - 09:00PM";orderImage = orderImage  ?? ImageConstant.imgFiRrTrash;id = id  ?? ""; }

String? orderNumber;

String? orderStatus;

String? orderDateTime;

String? orderImage;

String? id;

 }
