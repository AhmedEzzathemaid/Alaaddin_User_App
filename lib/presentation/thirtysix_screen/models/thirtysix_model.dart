// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'productlist7_item_model.dart';/// This class defines the variables used in the [thirtysix_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ThirtysixModel extends Equatable {ThirtysixModel({this.productlist7ItemList = const []}) {  }

List<Productlist7ItemModel> productlist7ItemList;

ThirtysixModel copyWith({List<Productlist7ItemModel>? productlist7ItemList}) { return ThirtysixModel(
productlist7ItemList : productlist7ItemList ?? this.productlist7ItemList,
); } 
@override List<Object?> get props => [productlist7ItemList];
 }
