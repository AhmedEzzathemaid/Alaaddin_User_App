// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'productlist5_item_model.dart';/// This class defines the variables used in the [fifteen_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class FifteenModel extends Equatable {FifteenModel({this.productlist5ItemList = const []}) {  }

List<Productlist5ItemModel> productlist5ItemList;

FifteenModel copyWith({List<Productlist5ItemModel>? productlist5ItemList}) { return FifteenModel(
productlist5ItemList : productlist5ItemList ?? this.productlist5ItemList,
); } 
@override List<Object?> get props => [productlist5ItemList];
 }
