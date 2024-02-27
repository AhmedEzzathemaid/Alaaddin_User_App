// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'view2_item_model.dart';import 'package:abdelhamed_s_application9/core/app_export.dart';import 's22_item_model.dart';import '../../../core/app_export.dart';import 'deliverypointscomponent1_item_model.dart';import 'rectangle9_item_model.dart';import 'productlist13_item_model.dart';/// This class defines the variables used in the [fiftytwo_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class FiftytwoModel extends Equatable {FiftytwoModel({this.view2ItemList = const [], this.dropdownItemList = const [], this.s22ItemList = const [], this.deliverypointscomponent1ItemList = const [], this.rectangle9ItemList = const [], this.productlist13ItemList = const [], }) {  }

List<View2ItemModel> view2ItemList;

List<SelectionPopupModel> dropdownItemList;

List<S22ItemModel> s22ItemList;

List<Deliverypointscomponent1ItemModel> deliverypointscomponent1ItemList;

List<Rectangle9ItemModel> rectangle9ItemList;

List<Productlist13ItemModel> productlist13ItemList;

FiftytwoModel copyWith({List<View2ItemModel>? view2ItemList, List<SelectionPopupModel>? dropdownItemList, List<S22ItemModel>? s22ItemList, List<Deliverypointscomponent1ItemModel>? deliverypointscomponent1ItemList, List<Rectangle9ItemModel>? rectangle9ItemList, List<Productlist13ItemModel>? productlist13ItemList, }) { return FiftytwoModel(
view2ItemList : view2ItemList ?? this.view2ItemList,
dropdownItemList : dropdownItemList ?? this.dropdownItemList,
s22ItemList : s22ItemList ?? this.s22ItemList,
deliverypointscomponent1ItemList : deliverypointscomponent1ItemList ?? this.deliverypointscomponent1ItemList,
rectangle9ItemList : rectangle9ItemList ?? this.rectangle9ItemList,
productlist13ItemList : productlist13ItemList ?? this.productlist13ItemList,
); } 
@override List<Object?> get props => [view2ItemList,dropdownItemList,s22ItemList,deliverypointscomponent1ItemList,rectangle9ItemList,productlist13ItemList];
 }
