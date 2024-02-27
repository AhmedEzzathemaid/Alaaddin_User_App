// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'viewhierarchy2_item_model.dart';import 'paymentoption_item_model.dart';/// This class defines the variables used in the [sixtyeight_page],
/// and is typically used to hold data that is passed between different parts of the application.
class SixtyeightModel extends Equatable {SixtyeightModel({this.viewhierarchy2ItemList = const [], this.paymentoptionItemList = const [], }) {  }

List<Viewhierarchy2ItemModel> viewhierarchy2ItemList;

List<PaymentoptionItemModel> paymentoptionItemList;

SixtyeightModel copyWith({List<Viewhierarchy2ItemModel>? viewhierarchy2ItemList, List<PaymentoptionItemModel>? paymentoptionItemList, }) { return SixtyeightModel(
viewhierarchy2ItemList : viewhierarchy2ItemList ?? this.viewhierarchy2ItemList,
paymentoptionItemList : paymentoptionItemList ?? this.paymentoptionItemList,
); } 
@override List<Object?> get props => [viewhierarchy2ItemList,paymentoptionItemList];
 }
