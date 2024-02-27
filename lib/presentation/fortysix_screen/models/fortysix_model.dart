// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'eightyone_item_model.dart';import 's20_item_model.dart';import '../../../core/app_export.dart';import 'rectangle6_item_model.dart';import 'productlist10_item_model.dart';/// This class defines the variables used in the [fortysix_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class FortysixModel extends Equatable {FortysixModel({this.eightyoneItemList = const [], this.s20ItemList = const [], this.rectangle6ItemList = const [], this.productlist10ItemList = const [], }) {  }

List<EightyoneItemModel> eightyoneItemList;

List<S20ItemModel> s20ItemList;

List<Rectangle6ItemModel> rectangle6ItemList;

List<Productlist10ItemModel> productlist10ItemList;

FortysixModel copyWith({List<EightyoneItemModel>? eightyoneItemList, List<S20ItemModel>? s20ItemList, List<Rectangle6ItemModel>? rectangle6ItemList, List<Productlist10ItemModel>? productlist10ItemList, }) { return FortysixModel(
eightyoneItemList : eightyoneItemList ?? this.eightyoneItemList,
s20ItemList : s20ItemList ?? this.s20ItemList,
rectangle6ItemList : rectangle6ItemList ?? this.rectangle6ItemList,
productlist10ItemList : productlist10ItemList ?? this.productlist10ItemList,
); } 
@override List<Object?> get props => [eightyoneItemList,s20ItemList,rectangle6ItemList,productlist10ItemList];
 }
