// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'walletcomponent_item_model.dart';import 'paymentmethod4_item_model.dart';/// This class defines the variables used in the [eightysix_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class EightysixModel extends Equatable {EightysixModel({this.walletcomponentItemList = const [], this.paymentmethod4ItemList = const [], }) {  }

List<WalletcomponentItemModel> walletcomponentItemList;

List<Paymentmethod4ItemModel> paymentmethod4ItemList;

EightysixModel copyWith({List<WalletcomponentItemModel>? walletcomponentItemList, List<Paymentmethod4ItemModel>? paymentmethod4ItemList, }) { return EightysixModel(
walletcomponentItemList : walletcomponentItemList ?? this.walletcomponentItemList,
paymentmethod4ItemList : paymentmethod4ItemList ?? this.paymentmethod4ItemList,
); } 
@override List<Object?> get props => [walletcomponentItemList,paymentmethod4ItemList];
 }
