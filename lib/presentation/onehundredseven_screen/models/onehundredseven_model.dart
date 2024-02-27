// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'productcard10_item_model.dart';/// This class defines the variables used in the [onehundredseven_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class OnehundredsevenModel extends Equatable {OnehundredsevenModel({this.productcard10ItemList = const []}) {  }

List<Productcard10ItemModel> productcard10ItemList;

OnehundredsevenModel copyWith({List<Productcard10ItemModel>? productcard10ItemList}) { return OnehundredsevenModel(
productcard10ItemList : productcard10ItemList ?? this.productcard10ItemList,
); } 
@override List<Object?> get props => [productcard10ItemList];
 }
