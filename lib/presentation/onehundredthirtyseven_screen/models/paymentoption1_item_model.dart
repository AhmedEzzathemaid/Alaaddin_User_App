import '../../../core/app_export.dart';/// This class is used in the [paymentoption1_item_widget] screen.
class Paymentoption1ItemModel {Paymentoption1ItemModel({this.image, this.title, this.accountNumber, this.id, }) { image = image  ?? ImageConstant.imgLogoNormal1;title = title  ?? "Cash pay";accountNumber = accountNumber  ?? "Account (6525454)";id = id  ?? ""; }

String? image;

String? title;

String? accountNumber;

String? id;

 }
