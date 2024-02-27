// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'seventy_item_model.dart';import 'package:abdelhamed_s_application9/core/app_export.dart';import 's16_item_model.dart';import '../../../core/app_export.dart';import 'productlist8_item_model.dart';/// This class defines the variables used in the [fortyfour_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class FortyfourModel extends Equatable {FortyfourModel({this.seventyItemList = const [], this.dropdownItemList = const [], this.s16ItemList = const [], this.productlist8ItemList = const [], }) {  }

List<SeventyItemModel> seventyItemList;

List<SelectionPopupModel> dropdownItemList;

List<S16ItemModel> s16ItemList;

List<Productlist8ItemModel> productlist8ItemList;

FortyfourModel copyWith({List<SeventyItemModel>? seventyItemList, List<SelectionPopupModel>? dropdownItemList, List<S16ItemModel>? s16ItemList, List<Productlist8ItemModel>? productlist8ItemList, }) { return FortyfourModel(
seventyItemList : seventyItemList ?? this.seventyItemList,
dropdownItemList : dropdownItemList ?? this.dropdownItemList,
s16ItemList : s16ItemList ?? this.s16ItemList,
productlist8ItemList : productlist8ItemList ?? this.productlist8ItemList,
); } 
@override List<Object?> get props => [seventyItemList,dropdownItemList,s16ItemList,productlist8ItemList];
 }
