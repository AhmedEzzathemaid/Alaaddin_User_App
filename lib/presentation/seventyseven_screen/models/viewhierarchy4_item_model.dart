import '../../../core/app_export.dart';/// This class is used in the [viewhierarchy4_item_widget] screen.
class Viewhierarchy4ItemModel {Viewhierarchy4ItemModel({this.cashImage, this.cashText, this.cashImage1, this.walletText, this.amountText, this.bankTransferImage, this.bankTransferText, this.id, }) { cashImage = cashImage  ?? ImageConstant.imgCashOnDelivery;cashText = cashText  ?? "Cash";cashImage1 = cashImage1  ?? ImageConstant.imgWallet3127x27;walletText = walletText  ?? "My wallet";amountText = amountText  ?? "500 YER";bankTransferImage = bankTransferImage  ?? ImageConstant.imgBanking1;bankTransferText = bankTransferText  ?? "Bank transfer";id = id  ?? ""; }

String? cashImage;

String? cashText;

String? cashImage1;

String? walletText;

String? amountText;

String? bankTransferImage;

String? bankTransferText;

String? id;

 }
