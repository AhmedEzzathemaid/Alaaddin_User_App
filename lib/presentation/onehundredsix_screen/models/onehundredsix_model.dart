// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'productcard9_item_model.dart';/// This class defines the variables used in the [onehundredsix_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class OnehundredsixModel extends Equatable {OnehundredsixModel({this.productcard9ItemList = const []}) {  }

List<Productcard9ItemModel> productcard9ItemList;

OnehundredsixModel copyWith({List<Productcard9ItemModel>? productcard9ItemList}) { return OnehundredsixModel(
productcard9ItemList : productcard9ItemList ?? this.productcard9ItemList,
); } 
@override List<Object?> get props => [productcard9ItemList];
 }
