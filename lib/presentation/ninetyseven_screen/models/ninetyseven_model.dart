// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'productdetails1_item_model.dart';/// This class defines the variables used in the [ninetyseven_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class NinetysevenModel extends Equatable {NinetysevenModel({this.productdetails1ItemList = const []}) {  }

List<Productdetails1ItemModel> productdetails1ItemList;

NinetysevenModel copyWith({List<Productdetails1ItemModel>? productdetails1ItemList}) { return NinetysevenModel(
productdetails1ItemList : productdetails1ItemList ?? this.productdetails1ItemList,
); } 
@override List<Object?> get props => [productdetails1ItemList];
 }
