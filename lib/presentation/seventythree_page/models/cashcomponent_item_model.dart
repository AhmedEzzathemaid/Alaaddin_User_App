import '../../../core/app_export.dart';/// This class is used in the [cashcomponent_item_widget] screen.
class CashcomponentItemModel {CashcomponentItemModel({this.cashImage, this.cashText, this.id, }) { cashImage = cashImage  ?? ImageConstant.imgCashOnDelivery;cashText = cashText  ?? "Cash";id = id  ?? ""; }

String? cashImage;

String? cashText;

String? id;

 }
