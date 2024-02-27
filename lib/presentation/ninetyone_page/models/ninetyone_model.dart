// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'ordersummary1_item_model.dart';/// This class defines the variables used in the [ninetyone_page],
/// and is typically used to hold data that is passed between different parts of the application.
class NinetyoneModel extends Equatable {NinetyoneModel({this.ordersummary1ItemList = const []}) {  }

List<Ordersummary1ItemModel> ordersummary1ItemList;

NinetyoneModel copyWith({List<Ordersummary1ItemModel>? ordersummary1ItemList}) { return NinetyoneModel(
ordersummary1ItemList : ordersummary1ItemList ?? this.ordersummary1ItemList,
); } 
@override List<Object?> get props => [ordersummary1ItemList];
 }
