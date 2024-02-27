// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'navigationmenu1_item_model.dart';import '../../../core/app_export.dart';import 'storeinfo1_item_model.dart';import 'rectangle1_item_model.dart';import 'productlist3_item_model.dart';import 'productlist4_item_model.dart';/// This class defines the variables used in the [seven_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class SevenModel extends Equatable {SevenModel({this.navigationmenu1ItemList = const [], this.storeinfo1ItemList = const [], this.rectangle1ItemList = const [], this.productlist3ItemList = const [], this.productlist4ItemList = const [], }) {  }

List<Navigationmenu1ItemModel> navigationmenu1ItemList;

List<Storeinfo1ItemModel> storeinfo1ItemList;

List<Rectangle1ItemModel> rectangle1ItemList;

List<Productlist3ItemModel> productlist3ItemList;

List<Productlist4ItemModel> productlist4ItemList;

SevenModel copyWith({List<Navigationmenu1ItemModel>? navigationmenu1ItemList, List<Storeinfo1ItemModel>? storeinfo1ItemList, List<Rectangle1ItemModel>? rectangle1ItemList, List<Productlist3ItemModel>? productlist3ItemList, List<Productlist4ItemModel>? productlist4ItemList, }) { return SevenModel(
navigationmenu1ItemList : navigationmenu1ItemList ?? this.navigationmenu1ItemList,
storeinfo1ItemList : storeinfo1ItemList ?? this.storeinfo1ItemList,
rectangle1ItemList : rectangle1ItemList ?? this.rectangle1ItemList,
productlist3ItemList : productlist3ItemList ?? this.productlist3ItemList,
productlist4ItemList : productlist4ItemList ?? this.productlist4ItemList,
); } 
@override List<Object?> get props => [navigationmenu1ItemList,storeinfo1ItemList,rectangle1ItemList,productlist3ItemList,productlist4ItemList];
 }
