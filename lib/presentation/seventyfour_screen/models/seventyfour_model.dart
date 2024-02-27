// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'transactionlist_item_model.dart';import 'userprofile6_item_model.dart';/// This class defines the variables used in the [seventyfour_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class SeventyfourModel extends Equatable {SeventyfourModel({this.transactionlistItemList = const [], this.userprofile6ItemList = const [], }) {  }

List<TransactionlistItemModel> transactionlistItemList;

List<Userprofile6ItemModel> userprofile6ItemList;

SeventyfourModel copyWith({List<TransactionlistItemModel>? transactionlistItemList, List<Userprofile6ItemModel>? userprofile6ItemList, }) { return SeventyfourModel(
transactionlistItemList : transactionlistItemList ?? this.transactionlistItemList,
userprofile6ItemList : userprofile6ItemList ?? this.userprofile6ItemList,
); } 
@override List<Object?> get props => [transactionlistItemList,userprofile6ItemList];
 }
