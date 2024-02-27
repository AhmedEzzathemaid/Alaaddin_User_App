// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'view1_item_model.dart';import 'package:abdelhamed_s_application9/core/app_export.dart';import '../../../core/app_export.dart';import 'deliverypointscomponent_item_model.dart';import 'rectangle8_item_model.dart';import 'productlist12_item_model.dart';/// This class defines the variables used in the [fiftyone_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class FiftyoneModel extends Equatable {FiftyoneModel({this.view1ItemList = const [], this.dropdownItemList = const [], this.deliverypointscomponentItemList = const [], this.rectangle8ItemList = const [], this.productlist12ItemList = const [], }) {  }

List<View1ItemModel> view1ItemList;

List<SelectionPopupModel> dropdownItemList;

List<DeliverypointscomponentItemModel> deliverypointscomponentItemList;

List<Rectangle8ItemModel> rectangle8ItemList;

List<Productlist12ItemModel> productlist12ItemList;

FiftyoneModel copyWith({List<View1ItemModel>? view1ItemList, List<SelectionPopupModel>? dropdownItemList, List<DeliverypointscomponentItemModel>? deliverypointscomponentItemList, List<Rectangle8ItemModel>? rectangle8ItemList, List<Productlist12ItemModel>? productlist12ItemList, }) { return FiftyoneModel(
view1ItemList : view1ItemList ?? this.view1ItemList,
dropdownItemList : dropdownItemList ?? this.dropdownItemList,
deliverypointscomponentItemList : deliverypointscomponentItemList ?? this.deliverypointscomponentItemList,
rectangle8ItemList : rectangle8ItemList ?? this.rectangle8ItemList,
productlist12ItemList : productlist12ItemList ?? this.productlist12ItemList,
); } 
@override List<Object?> get props => [view1ItemList,dropdownItemList,deliverypointscomponentItemList,rectangle8ItemList,productlist12ItemList];
 }
