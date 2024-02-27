import '../../../core/app_export.dart';/// This class is used in the [walletcomponent_item_widget] screen.
class WalletcomponentItemModel {WalletcomponentItemModel({this.walletImage, this.walletText, this.amountText, this.id, }) { walletImage = walletImage  ?? ImageConstant.imgWallet3127x27;walletText = walletText  ?? "My wallet";amountText = amountText  ?? "500 YER";id = id  ?? ""; }

String? walletImage;

String? walletText;

String? amountText;

String? id;

 }
