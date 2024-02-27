// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'icphysician_item_model.dart';import 'storeinfo2_item_model.dart';import 'rectangle4_item_model.dart';import 'viewhierarchy_item_model.dart';/// This class defines the variables used in the [nine_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class NineModel extends Equatable {NineModel({this.icphysicianItemList = const [], this.storeinfo2ItemList = const [], this.rectangle4ItemList = const [], this.viewhierarchyItemList = const [], }) {  }

List<IcphysicianItemModel> icphysicianItemList;

List<Storeinfo2ItemModel> storeinfo2ItemList;

List<Rectangle4ItemModel> rectangle4ItemList;

List<ViewhierarchyItemModel> viewhierarchyItemList;

NineModel copyWith({List<IcphysicianItemModel>? icphysicianItemList, List<Storeinfo2ItemModel>? storeinfo2ItemList, List<Rectangle4ItemModel>? rectangle4ItemList, List<ViewhierarchyItemModel>? viewhierarchyItemList, }) { return NineModel(
icphysicianItemList : icphysicianItemList ?? this.icphysicianItemList,
storeinfo2ItemList : storeinfo2ItemList ?? this.storeinfo2ItemList,
rectangle4ItemList : rectangle4ItemList ?? this.rectangle4ItemList,
viewhierarchyItemList : viewhierarchyItemList ?? this.viewhierarchyItemList,
); } 
@override List<Object?> get props => [icphysicianItemList,storeinfo2ItemList,rectangle4ItemList,viewhierarchyItemList];
 }
