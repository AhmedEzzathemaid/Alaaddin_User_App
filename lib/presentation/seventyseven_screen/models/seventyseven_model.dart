// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'viewhierarchy4_item_model.dart';import 'paymentmethod1_item_model.dart';/// This class defines the variables used in the [seventyseven_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class SeventysevenModel extends Equatable {SeventysevenModel({this.viewhierarchy4ItemList = const [], this.paymentmethod1ItemList = const [], }) {  }

List<Viewhierarchy4ItemModel> viewhierarchy4ItemList;

List<Paymentmethod1ItemModel> paymentmethod1ItemList;

SeventysevenModel copyWith({List<Viewhierarchy4ItemModel>? viewhierarchy4ItemList, List<Paymentmethod1ItemModel>? paymentmethod1ItemList, }) { return SeventysevenModel(
viewhierarchy4ItemList : viewhierarchy4ItemList ?? this.viewhierarchy4ItemList,
paymentmethod1ItemList : paymentmethod1ItemList ?? this.paymentmethod1ItemList,
); } 
@override List<Object?> get props => [viewhierarchy4ItemList,paymentmethod1ItemList];
 }
