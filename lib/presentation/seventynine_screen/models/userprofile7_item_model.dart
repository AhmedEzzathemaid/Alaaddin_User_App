import '../../../core/app_export.dart';/// This class is used in the [userprofile7_item_widget] screen.
class Userprofile7ItemModel {Userprofile7ItemModel({this.userImage, this.username, this.accountNumber, this.id, }) { userImage = userImage  ?? ImageConstant.imgFloosakLogo1;username = username  ?? "Floosak";accountNumber = accountNumber  ?? "Account (6525454)";id = id  ?? ""; }

String? userImage;

String? username;

String? accountNumber;

String? id;

 }
