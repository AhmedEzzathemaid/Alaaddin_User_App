// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'package:abdelhamed_s_application9/core/app_export.dart';/// This class defines the variables used in the [five_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class FiveModel extends Equatable {FiveModel({this.dropdownItemList = const [], this.dropdownItemList1 = const [], this.dropdownItemList2 = const [], }) {  }

List<SelectionPopupModel> dropdownItemList;

List<SelectionPopupModel> dropdownItemList1;

List<SelectionPopupModel> dropdownItemList2;

FiveModel copyWith({List<SelectionPopupModel>? dropdownItemList, List<SelectionPopupModel>? dropdownItemList1, List<SelectionPopupModel>? dropdownItemList2, }) { return FiveModel(
dropdownItemList : dropdownItemList ?? this.dropdownItemList,
dropdownItemList1 : dropdownItemList1 ?? this.dropdownItemList1,
dropdownItemList2 : dropdownItemList2 ?? this.dropdownItemList2,
); } 
@override List<Object?> get props => [dropdownItemList,dropdownItemList1,dropdownItemList2];
 }
