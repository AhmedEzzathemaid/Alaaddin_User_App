// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'banking_item_model.dart';import 'paymentoption1_item_model.dart';/// This class defines the variables used in the [onehundredthirtyseven_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class OnehundredthirtysevenModel extends Equatable {OnehundredthirtysevenModel({this.bankingItemList = const [], this.paymentoption1ItemList = const [], }) {  }

List<BankingItemModel> bankingItemList;

List<Paymentoption1ItemModel> paymentoption1ItemList;

OnehundredthirtysevenModel copyWith({List<BankingItemModel>? bankingItemList, List<Paymentoption1ItemModel>? paymentoption1ItemList, }) { return OnehundredthirtysevenModel(
bankingItemList : bankingItemList ?? this.bankingItemList,
paymentoption1ItemList : paymentoption1ItemList ?? this.paymentoption1ItemList,
); } 
@override List<Object?> get props => [bankingItemList,paymentoption1ItemList];
 }
