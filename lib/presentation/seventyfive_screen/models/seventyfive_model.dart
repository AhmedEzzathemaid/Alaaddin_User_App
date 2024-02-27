// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'viewhierarchy3_item_model.dart';import 'paymentmethod_item_model.dart';/// This class defines the variables used in the [seventyfive_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class SeventyfiveModel extends Equatable {SeventyfiveModel({this.viewhierarchy3ItemList = const [], this.paymentmethodItemList = const [], }) {  }

List<Viewhierarchy3ItemModel> viewhierarchy3ItemList;

List<PaymentmethodItemModel> paymentmethodItemList;

SeventyfiveModel copyWith({List<Viewhierarchy3ItemModel>? viewhierarchy3ItemList, List<PaymentmethodItemModel>? paymentmethodItemList, }) { return SeventyfiveModel(
viewhierarchy3ItemList : viewhierarchy3ItemList ?? this.viewhierarchy3ItemList,
paymentmethodItemList : paymentmethodItemList ?? this.paymentmethodItemList,
); } 
@override List<Object?> get props => [viewhierarchy3ItemList,paymentmethodItemList];
 }
