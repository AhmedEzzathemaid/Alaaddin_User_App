// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'eightyseven_item_model.dart';import 's18_item_model.dart';import '../../../core/app_export.dart';import 'rectangle5_item_model.dart';import 'productlist9_item_model.dart';/// This class defines the variables used in the [fortyfive_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class FortyfiveModel extends Equatable {FortyfiveModel({this.eightysevenItemList = const [], this.s18ItemList = const [], this.rectangle5ItemList = const [], this.productlist9ItemList = const [], }) {  }

List<EightysevenItemModel> eightysevenItemList;

List<S18ItemModel> s18ItemList;

List<Rectangle5ItemModel> rectangle5ItemList;

List<Productlist9ItemModel> productlist9ItemList;

FortyfiveModel copyWith({List<EightysevenItemModel>? eightysevenItemList, List<S18ItemModel>? s18ItemList, List<Rectangle5ItemModel>? rectangle5ItemList, List<Productlist9ItemModel>? productlist9ItemList, }) { return FortyfiveModel(
eightysevenItemList : eightysevenItemList ?? this.eightysevenItemList,
s18ItemList : s18ItemList ?? this.s18ItemList,
rectangle5ItemList : rectangle5ItemList ?? this.rectangle5ItemList,
productlist9ItemList : productlist9ItemList ?? this.productlist9ItemList,
); } 
@override List<Object?> get props => [eightysevenItemList,s18ItemList,rectangle5ItemList,productlist9ItemList];
 }
