import '../../../core/app_export.dart';/// This class is used in the [paymentmethodcomponent1_item_widget] screen.
class Paymentmethodcomponent1ItemModel {Paymentmethodcomponent1ItemModel({this.paymentMethod, this.cashImage, this.cashText, this.bankTransferImage, this.myWallet, this.price, this.banktransfer, this.bankTransferText, this.id, }) { paymentMethod = paymentMethod  ?? "Payment method";cashImage = cashImage  ?? ImageConstant.imgCashOnDelivery;cashText = cashText  ?? "Cash";bankTransferImage = bankTransferImage  ?? ImageConstant.imgWallet3127x27;myWallet = myWallet  ?? "My wallet";price = price  ?? "500 YER";banktransfer = banktransfer  ?? ImageConstant.imgBanking1;bankTransferText = bankTransferText  ?? "Bank transfer";id = id  ?? ""; }

String? paymentMethod;

String? cashImage;

String? cashText;

String? bankTransferImage;

String? myWallet;

String? price;

String? banktransfer;

String? bankTransferText;

String? id;

 }
