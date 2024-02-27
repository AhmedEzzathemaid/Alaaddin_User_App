// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'allthebest_item_model.dart';import 'zipcode_item_model.dart';/// This class defines the variables used in the [eightyfour_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class EightyfourModel extends Equatable {EightyfourModel({this.allthebestItemList = const [], this.zipcodeItemList = const [], }) {  }

List<AllthebestItemModel> allthebestItemList;

List<ZipcodeItemModel> zipcodeItemList;

EightyfourModel copyWith({List<AllthebestItemModel>? allthebestItemList, List<ZipcodeItemModel>? zipcodeItemList, }) { return EightyfourModel(
allthebestItemList : allthebestItemList ?? this.allthebestItemList,
zipcodeItemList : zipcodeItemList ?? this.zipcodeItemList,
); } 
@override List<Object?> get props => [allthebestItemList,zipcodeItemList];
 }
