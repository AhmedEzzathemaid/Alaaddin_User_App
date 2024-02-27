// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'productlist15_item_model.dart';/// This class defines the variables used in the [fiftynine_page],
/// and is typically used to hold data that is passed between different parts of the application.
class FiftynineModel extends Equatable {FiftynineModel({this.productlist15ItemList = const []}) {  }

List<Productlist15ItemModel> productlist15ItemList;

FiftynineModel copyWith({List<Productlist15ItemModel>? productlist15ItemList}) { return FiftynineModel(
productlist15ItemList : productlist15ItemList ?? this.productlist15ItemList,
); } 
@override List<Object?> get props => [productlist15ItemList];
 }
