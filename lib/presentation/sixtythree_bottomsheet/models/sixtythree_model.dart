// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'productcard2_item_model.dart';/// This class defines the variables used in the [sixtythree_bottomsheet],
/// and is typically used to hold data that is passed between different parts of the application.
class SixtythreeModel extends Equatable {SixtythreeModel({this.productcard2ItemList = const []}) {  }

List<Productcard2ItemModel> productcard2ItemList;

SixtythreeModel copyWith({List<Productcard2ItemModel>? productcard2ItemList}) { return SixtythreeModel(
productcard2ItemList : productcard2ItemList ?? this.productcard2ItemList,
); } 
@override List<Object?> get props => [productcard2ItemList];
 }
