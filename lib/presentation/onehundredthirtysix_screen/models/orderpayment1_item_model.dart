import '../../../core/app_export.dart';/// This class is used in the [orderpayment1_item_widget] screen.
class Orderpayment1ItemModel {Orderpayment1ItemModel({this.orderPaymentText, this.orderNumberText, this.orderDateTimeText, this.orderAmountText, this.id, }) { orderPaymentText = orderPaymentText  ?? "Order payment";orderNumberText = orderNumberText  ?? "#52156564320";orderDateTimeText = orderDateTimeText  ?? "22/01/2023 - 09:30 PM";orderAmountText = orderAmountText  ?? "-100 YER";id = id  ?? ""; }

String? orderPaymentText;

String? orderNumberText;

String? orderDateTimeText;

String? orderAmountText;

String? id;

 }
