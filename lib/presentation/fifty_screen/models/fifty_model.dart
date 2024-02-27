// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'view_item_model.dart';import '../../../core/app_export.dart';import 'deliverypoints_item_model.dart';import 'rectangle7_item_model.dart';import 'productlist11_item_model.dart';/// This class defines the variables used in the [fifty_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class FiftyModel extends Equatable {FiftyModel({this.viewItemList = const [], this.deliverypointsItemList = const [], this.rectangle7ItemList = const [], this.productlist11ItemList = const [], }) {  }

List<ViewItemModel> viewItemList;

List<DeliverypointsItemModel> deliverypointsItemList;

List<Rectangle7ItemModel> rectangle7ItemList;

List<Productlist11ItemModel> productlist11ItemList;

FiftyModel copyWith({List<ViewItemModel>? viewItemList, List<DeliverypointsItemModel>? deliverypointsItemList, List<Rectangle7ItemModel>? rectangle7ItemList, List<Productlist11ItemModel>? productlist11ItemList, }) { return FiftyModel(
viewItemList : viewItemList ?? this.viewItemList,
deliverypointsItemList : deliverypointsItemList ?? this.deliverypointsItemList,
rectangle7ItemList : rectangle7ItemList ?? this.rectangle7ItemList,
productlist11ItemList : productlist11ItemList ?? this.productlist11ItemList,
); } 
@override List<Object?> get props => [viewItemList,deliverypointsItemList,rectangle7ItemList,productlist11ItemList];
 }
