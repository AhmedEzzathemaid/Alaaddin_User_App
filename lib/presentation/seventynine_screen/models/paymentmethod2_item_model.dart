import '../../../core/app_export.dart';/// This class is used in the [paymentmethod2_item_widget] screen.
class Paymentmethod2ItemModel {Paymentmethod2ItemModel({this.paymentMethodText, this.cashImage, this.cashText, this.cashImage2, this.myWalletText, this.walletAmountText, this.bankTransferImage, this.bankTransferText, this.id, }) { paymentMethodText = paymentMethodText  ?? "Payment method";cashImage = cashImage  ?? ImageConstant.imgCashOnDelivery;cashText = cashText  ?? "Cash";cashImage2 = cashImage2  ?? ImageConstant.imgWallet3127x27;myWalletText = myWalletText  ?? "My wallet";walletAmountText = walletAmountText  ?? "500 YER";bankTransferImage = bankTransferImage  ?? ImageConstant.imgBanking1;bankTransferText = bankTransferText  ?? "Bank transfer";id = id  ?? ""; }

String? paymentMethodText;

String? cashImage;

String? cashText;

String? cashImage2;

String? myWalletText;

String? walletAmountText;

String? bankTransferImage;

String? bankTransferText;

String? id;

 }
