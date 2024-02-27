// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'orderdetails1_item_model.dart';/// This class defines the variables used in the [ninety_page],
/// and is typically used to hold data that is passed between different parts of the application.
class NinetyModel extends Equatable {NinetyModel({this.orderdetails1ItemList = const []}) {  }

List<Orderdetails1ItemModel> orderdetails1ItemList;

NinetyModel copyWith({List<Orderdetails1ItemModel>? orderdetails1ItemList}) { return NinetyModel(
orderdetails1ItemList : orderdetails1ItemList ?? this.orderdetails1ItemList,
); } 
@override List<Object?> get props => [orderdetails1ItemList];
 }
