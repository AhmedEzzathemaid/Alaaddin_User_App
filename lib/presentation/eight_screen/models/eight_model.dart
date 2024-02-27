// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'dynamicmenu_item_model.dart';import '../../../core/app_export.dart';import 'userprofile_item_model.dart';import 'rectangle2_item_model.dart';import 'rectangle3_item_model.dart';/// This class defines the variables used in the [eight_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class EightModel extends Equatable {EightModel({this.dynamicmenuItemList = const [], this.userprofileItemList = const [], this.rectangle2ItemList = const [], this.rectangle3ItemList = const [], }) {  }

List<DynamicmenuItemModel> dynamicmenuItemList;

List<UserprofileItemModel> userprofileItemList;

List<Rectangle2ItemModel> rectangle2ItemList;

List<Rectangle3ItemModel> rectangle3ItemList;

EightModel copyWith({List<DynamicmenuItemModel>? dynamicmenuItemList, List<UserprofileItemModel>? userprofileItemList, List<Rectangle2ItemModel>? rectangle2ItemList, List<Rectangle3ItemModel>? rectangle3ItemList, }) { return EightModel(
dynamicmenuItemList : dynamicmenuItemList ?? this.dynamicmenuItemList,
userprofileItemList : userprofileItemList ?? this.userprofileItemList,
rectangle2ItemList : rectangle2ItemList ?? this.rectangle2ItemList,
rectangle3ItemList : rectangle3ItemList ?? this.rectangle3ItemList,
); } 
@override List<Object?> get props => [dynamicmenuItemList,userprofileItemList,rectangle2ItemList,rectangle3ItemList];
 }
