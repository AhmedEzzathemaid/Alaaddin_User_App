// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'orderdetails_item_model.dart';/// This class defines the variables used in the [eightyeight_page],
/// and is typically used to hold data that is passed between different parts of the application.
class EightyeightModel extends Equatable {EightyeightModel({this.orderdetailsItemList = const []}) {  }

List<OrderdetailsItemModel> orderdetailsItemList;

EightyeightModel copyWith({List<OrderdetailsItemModel>? orderdetailsItemList}) { return EightyeightModel(
orderdetailsItemList : orderdetailsItemList ?? this.orderdetailsItemList,
); } 
@override List<Object?> get props => [orderdetailsItemList];
 }
