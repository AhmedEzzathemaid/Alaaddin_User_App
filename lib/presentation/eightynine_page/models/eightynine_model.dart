// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'ordersummary_item_model.dart';/// This class defines the variables used in the [eightynine_page],
/// and is typically used to hold data that is passed between different parts of the application.
class EightynineModel extends Equatable {EightynineModel({this.ordersummaryItemList = const []}) {  }

List<OrdersummaryItemModel> ordersummaryItemList;

EightynineModel copyWith({List<OrdersummaryItemModel>? ordersummaryItemList}) { return EightynineModel(
ordersummaryItemList : ordersummaryItemList ?? this.ordersummaryItemList,
); } 
@override List<Object?> get props => [ordersummaryItemList];
 }
