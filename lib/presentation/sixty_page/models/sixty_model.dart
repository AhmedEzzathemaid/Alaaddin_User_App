// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'products_item_model.dart';import '../../../core/app_export.dart';import 'storeinfo6_item_model.dart';/// This class defines the variables used in the [sixty_page],
/// and is typically used to hold data that is passed between different parts of the application.
class SixtyModel extends Equatable {SixtyModel({this.productsItemList = const [], this.storeinfo6ItemList = const [], }) {  }

List<ProductsItemModel> productsItemList;

List<Storeinfo6ItemModel> storeinfo6ItemList;

SixtyModel copyWith({List<ProductsItemModel>? productsItemList, List<Storeinfo6ItemModel>? storeinfo6ItemList, }) { return SixtyModel(
productsItemList : productsItemList ?? this.productsItemList,
storeinfo6ItemList : storeinfo6ItemList ?? this.storeinfo6ItemList,
); } 
@override List<Object?> get props => [productsItemList,storeinfo6ItemList];
 }
