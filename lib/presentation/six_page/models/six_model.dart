// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'navigationmenu_item_model.dart';import '../../../core/app_export.dart';import 'storeinfo_item_model.dart';import 'rectangle_item_model.dart';import 'productlist_item_model.dart';import 'productlist1_item_model.dart';import 'productlist2_item_model.dart';/// This class defines the variables used in the [six_page],
/// and is typically used to hold data that is passed between different parts of the application.
class SixModel extends Equatable {SixModel({this.navigationmenuItemList = const [], this.storeinfoItemList = const [], this.rectangleItemList = const [], this.productlistItemList = const [], this.productlist1ItemList = const [], this.productlist2ItemList = const [], }) {  }

List<NavigationmenuItemModel> navigationmenuItemList;

List<StoreinfoItemModel> storeinfoItemList;

List<RectangleItemModel> rectangleItemList;

List<ProductlistItemModel> productlistItemList;

List<Productlist1ItemModel> productlist1ItemList;

List<Productlist2ItemModel> productlist2ItemList;

SixModel copyWith({List<NavigationmenuItemModel>? navigationmenuItemList, List<StoreinfoItemModel>? storeinfoItemList, List<RectangleItemModel>? rectangleItemList, List<ProductlistItemModel>? productlistItemList, List<Productlist1ItemModel>? productlist1ItemList, List<Productlist2ItemModel>? productlist2ItemList, }) { return SixModel(
navigationmenuItemList : navigationmenuItemList ?? this.navigationmenuItemList,
storeinfoItemList : storeinfoItemList ?? this.storeinfoItemList,
rectangleItemList : rectangleItemList ?? this.rectangleItemList,
productlistItemList : productlistItemList ?? this.productlistItemList,
productlist1ItemList : productlist1ItemList ?? this.productlist1ItemList,
productlist2ItemList : productlist2ItemList ?? this.productlist2ItemList,
); } 
@override List<Object?> get props => [navigationmenuItemList,storeinfoItemList,rectangleItemList,productlistItemList,productlist1ItemList,productlist2ItemList];
 }
