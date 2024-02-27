// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'productcard3_item_model.dart';/// This class defines the variables used in the [sixtyfour_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class SixtyfourModel extends Equatable {SixtyfourModel({this.productcard3ItemList = const []}) {  }

List<Productcard3ItemModel> productcard3ItemList;

SixtyfourModel copyWith({List<Productcard3ItemModel>? productcard3ItemList}) { return SixtyfourModel(
productcard3ItemList : productcard3ItemList ?? this.productcard3ItemList,
); } 
@override List<Object?> get props => [productcard3ItemList];
 }
