// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'productdetails2_item_model.dart';/// This class defines the variables used in the [ninetyeight_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class NinetyeightModel extends Equatable {NinetyeightModel({this.productdetails2ItemList = const []}) {  }

List<Productdetails2ItemModel> productdetails2ItemList;

NinetyeightModel copyWith({List<Productdetails2ItemModel>? productdetails2ItemList}) { return NinetyeightModel(
productdetails2ItemList : productdetails2ItemList ?? this.productdetails2ItemList,
); } 
@override List<Object?> get props => [productdetails2ItemList];
 }
