// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'package:abdelhamed_s_application9/core/app_export.dart';/// This class defines the variables used in the [four_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class FourModel extends Equatable {FourModel({this.dropdownItemList = const [], this.dropdownItemList1 = const [], }) {  }

List<SelectionPopupModel> dropdownItemList;

List<SelectionPopupModel> dropdownItemList1;

FourModel copyWith({List<SelectionPopupModel>? dropdownItemList, List<SelectionPopupModel>? dropdownItemList1, }) { return FourModel(
dropdownItemList : dropdownItemList ?? this.dropdownItemList,
dropdownItemList1 : dropdownItemList1 ?? this.dropdownItemList1,
); } 
@override List<Object?> get props => [dropdownItemList,dropdownItemList1];
 }
