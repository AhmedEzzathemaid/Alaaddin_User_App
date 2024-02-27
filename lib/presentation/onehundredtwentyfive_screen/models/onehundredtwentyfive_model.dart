// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'productdetails5_item_model.dart';/// This class defines the variables used in the [onehundredtwentyfive_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class OnehundredtwentyfiveModel extends Equatable {OnehundredtwentyfiveModel({this.productdetails5ItemList = const []}) {  }

List<Productdetails5ItemModel> productdetails5ItemList;

OnehundredtwentyfiveModel copyWith({List<Productdetails5ItemModel>? productdetails5ItemList}) { return OnehundredtwentyfiveModel(
productdetails5ItemList : productdetails5ItemList ?? this.productdetails5ItemList,
); } 
@override List<Object?> get props => [productdetails5ItemList];
 }
