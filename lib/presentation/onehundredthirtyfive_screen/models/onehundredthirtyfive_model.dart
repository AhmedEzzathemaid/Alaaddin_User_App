// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'orderpayment_item_model.dart';/// This class defines the variables used in the [onehundredthirtyfive_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class OnehundredthirtyfiveModel extends Equatable {OnehundredthirtyfiveModel({this.orderpaymentItemList = const []}) {  }

List<OrderpaymentItemModel> orderpaymentItemList;

OnehundredthirtyfiveModel copyWith({List<OrderpaymentItemModel>? orderpaymentItemList}) { return OnehundredthirtyfiveModel(
orderpaymentItemList : orderpaymentItemList ?? this.orderpaymentItemList,
); } 
@override List<Object?> get props => [orderpaymentItemList];
 }
