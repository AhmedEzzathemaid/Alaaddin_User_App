// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'productdetails4_item_model.dart';/// This class defines the variables used in the [onehundredtwentyfour_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class OnehundredtwentyfourModel extends Equatable {OnehundredtwentyfourModel({this.productdetails4ItemList = const []}) {  }

List<Productdetails4ItemModel> productdetails4ItemList;

OnehundredtwentyfourModel copyWith({List<Productdetails4ItemModel>? productdetails4ItemList}) { return OnehundredtwentyfourModel(
productdetails4ItemList : productdetails4ItemList ?? this.productdetails4ItemList,
); } 
@override List<Object?> get props => [productdetails4ItemList];
 }
