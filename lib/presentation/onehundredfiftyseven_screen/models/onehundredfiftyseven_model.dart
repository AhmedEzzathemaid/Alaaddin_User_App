// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'orderconfirmation_item_model.dart';/// This class defines the variables used in the [onehundredfiftyseven_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class OnehundredfiftysevenModel extends Equatable {OnehundredfiftysevenModel({this.orderconfirmationItemList = const []}) {  }

List<OrderconfirmationItemModel> orderconfirmationItemList;

OnehundredfiftysevenModel copyWith({List<OrderconfirmationItemModel>? orderconfirmationItemList}) { return OnehundredfiftysevenModel(
orderconfirmationItemList : orderconfirmationItemList ?? this.orderconfirmationItemList,
); } 
@override List<Object?> get props => [orderconfirmationItemList];
 }
