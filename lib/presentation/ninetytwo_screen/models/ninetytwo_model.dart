// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'productdetails_item_model.dart';/// This class defines the variables used in the [ninetytwo_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class NinetytwoModel extends Equatable {NinetytwoModel({this.productdetailsItemList = const []}) {  }

List<ProductdetailsItemModel> productdetailsItemList;

NinetytwoModel copyWith({List<ProductdetailsItemModel>? productdetailsItemList}) { return NinetytwoModel(
productdetailsItemList : productdetailsItemList ?? this.productdetailsItemList,
); } 
@override List<Object?> get props => [productdetailsItemList];
 }
