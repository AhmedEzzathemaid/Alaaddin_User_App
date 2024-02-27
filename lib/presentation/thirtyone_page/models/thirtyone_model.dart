// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'productlist6_item_model.dart';/// This class defines the variables used in the [thirtyone_page],
/// and is typically used to hold data that is passed between different parts of the application.
class ThirtyoneModel extends Equatable {ThirtyoneModel({this.productlist6ItemList = const []}) {  }

List<Productlist6ItemModel> productlist6ItemList;

ThirtyoneModel copyWith({List<Productlist6ItemModel>? productlist6ItemList}) { return ThirtyoneModel(
productlist6ItemList : productlist6ItemList ?? this.productlist6ItemList,
); } 
@override List<Object?> get props => [productlist6ItemList];
 }
