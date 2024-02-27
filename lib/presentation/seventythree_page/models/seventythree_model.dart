// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'cashcomponent_item_model.dart';import 'userprofile5_item_model.dart';/// This class defines the variables used in the [seventythree_page],
/// and is typically used to hold data that is passed between different parts of the application.
class SeventythreeModel extends Equatable {SeventythreeModel({this.cashcomponentItemList = const [], this.userprofile5ItemList = const [], }) {  }

List<CashcomponentItemModel> cashcomponentItemList;

List<Userprofile5ItemModel> userprofile5ItemList;

SeventythreeModel copyWith({List<CashcomponentItemModel>? cashcomponentItemList, List<Userprofile5ItemModel>? userprofile5ItemList, }) { return SeventythreeModel(
cashcomponentItemList : cashcomponentItemList ?? this.cashcomponentItemList,
userprofile5ItemList : userprofile5ItemList ?? this.userprofile5ItemList,
); } 
@override List<Object?> get props => [cashcomponentItemList,userprofile5ItemList];
 }
