// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'productcard11_item_model.dart';/// This class defines the variables used in the [onehundredtwentyseven_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class OnehundredtwentysevenModel extends Equatable {OnehundredtwentysevenModel({this.productcard11ItemList = const []}) {  }

List<Productcard11ItemModel> productcard11ItemList;

OnehundredtwentysevenModel copyWith({List<Productcard11ItemModel>? productcard11ItemList}) { return OnehundredtwentysevenModel(
productcard11ItemList : productcard11ItemList ?? this.productcard11ItemList,
); } 
@override List<Object?> get props => [productcard11ItemList];
 }
