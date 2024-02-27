// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'productcard8_item_model.dart';/// This class defines the variables used in the [onehundredfive_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class OnehundredfiveModel extends Equatable {OnehundredfiveModel({this.productcard8ItemList = const []}) {  }

List<Productcard8ItemModel> productcard8ItemList;

OnehundredfiveModel copyWith({List<Productcard8ItemModel>? productcard8ItemList}) { return OnehundredfiveModel(
productcard8ItemList : productcard8ItemList ?? this.productcard8ItemList,
); } 
@override List<Object?> get props => [productcard8ItemList];
 }
