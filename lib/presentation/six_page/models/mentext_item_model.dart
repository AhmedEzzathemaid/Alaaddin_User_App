import '../../../core/app_export.dart';/// This class is used in the [mentext_item_widget] screen.
class MentextItemModel {MentextItemModel({this.stethoscopeImage, this.stethoscopeImage1, this.gridImage, this.menText, this.id, }) { stethoscopeImage = stethoscopeImage  ?? ImageConstant.img007Stethoscope;stethoscopeImage1 = stethoscopeImage1  ?? ImageConstant.img007Stethoscope;gridImage = gridImage  ?? ImageConstant.imgGridWhiteA70056x56;menText = menText  ?? "Men";id = id  ?? ""; }

String? stethoscopeImage;

String? stethoscopeImage1;

String? gridImage;

String? menText;

String? id;

 }
