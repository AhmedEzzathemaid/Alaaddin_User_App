import '../../../core/app_export.dart';/// This class is used in the [transactionlist_item_widget] screen.
class TransactionlistItemModel {TransactionlistItemModel({this.cashImage, this.cashText, this.bankImage, this.walletText, this.amountText, this.bankTransferImage, this.bankTransferText, this.id, }) { cashImage = cashImage  ?? ImageConstant.imgCashOnDelivery;cashText = cashText  ?? "Cash";bankImage = bankImage  ?? ImageConstant.imgWallet3127x27;walletText = walletText  ?? "My wallet";amountText = amountText  ?? "500 YER";bankTransferImage = bankTransferImage  ?? ImageConstant.imgBanking1;bankTransferText = bankTransferText  ?? "Bank transfer";id = id  ?? ""; }

String? cashImage;

String? cashText;

String? bankImage;

String? walletText;

String? amountText;

String? bankTransferImage;

String? bankTransferText;

String? id;

 }
