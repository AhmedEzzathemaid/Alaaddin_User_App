// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'productlist14_item_model.dart';/// This class defines the variables used in the [fiftythree_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class FiftythreeModel extends Equatable {FiftythreeModel({this.productlist14ItemList = const []}) {  }

List<Productlist14ItemModel> productlist14ItemList;

FiftythreeModel copyWith({List<Productlist14ItemModel>? productlist14ItemList}) { return FiftythreeModel(
productlist14ItemList : productlist14ItemList ?? this.productlist14ItemList,
); } 
@override List<Object?> get props => [productlist14ItemList];
 }
