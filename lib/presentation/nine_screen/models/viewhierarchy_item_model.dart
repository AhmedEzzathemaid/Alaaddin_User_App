import '../../../core/app_export.dart';/// This class is used in the [viewhierarchy_item_widget] screen.
class ViewhierarchyItemModel {ViewhierarchyItemModel({this.image, this.text, this.icon, this.bomberJackets, this.id, }) { image = image  ?? ImageConstant.imgRectangle22426;text = text  ?? "20%";icon = icon  ?? ImageConstant.imgSupportHeart;bomberJackets = bomberJackets  ?? "Bomber Jackets";id = id  ?? ""; }

String? image;

String? text;

String? icon;

String? bomberJackets;

String? id;

 }
