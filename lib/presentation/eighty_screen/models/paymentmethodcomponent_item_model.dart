import '../../../core/app_export.dart';/// This class is used in the [paymentmethodcomponent_item_widget] screen.
class PaymentmethodcomponentItemModel {PaymentmethodcomponentItemModel({this.paymentMethod, this.cashImage, this.cashText, this.cash, this.myWalletText, this.walletAmountText, this.banktransfer, this.bankTransferText, this.id, }) { paymentMethod = paymentMethod  ?? "Payment method";cashImage = cashImage  ?? ImageConstant.imgCashOnDelivery;cashText = cashText  ?? "Cash";cash = cash  ?? ImageConstant.imgWallet3127x27;myWalletText = myWalletText  ?? "My wallet";walletAmountText = walletAmountText  ?? "500 YER";banktransfer = banktransfer  ?? ImageConstant.imgBanking1;bankTransferText = bankTransferText  ?? "Bank transfer";id = id  ?? ""; }

String? paymentMethod;

String? cashImage;

String? cashText;

String? cash;

String? myWalletText;

String? walletAmountText;

String? banktransfer;

String? bankTransferText;

String? id;

 }
