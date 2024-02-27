// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'ordersummary2_item_model.dart';/// This class defines the variables used in the [onehundredeight_page],
/// and is typically used to hold data that is passed between different parts of the application.
class OnehundredeightModel extends Equatable {OnehundredeightModel({this.ordersummary2ItemList = const []}) {  }

List<Ordersummary2ItemModel> ordersummary2ItemList;

OnehundredeightModel copyWith({List<Ordersummary2ItemModel>? ordersummary2ItemList}) { return OnehundredeightModel(
ordersummary2ItemList : ordersummary2ItemList ?? this.ordersummary2ItemList,
); } 
@override List<Object?> get props => [ordersummary2ItemList];
 }
