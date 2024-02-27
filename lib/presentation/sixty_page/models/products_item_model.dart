// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';/// This class is used in the [products_item_widget] screen.
class ProductsItemModel extends Equatable {ProductsItemModel({this.products, this.isSelected, }) { products = products  ?? "products";isSelected = isSelected  ?? false; }

String? products;

bool? isSelected;

ProductsItemModel copyWith({String? products, bool? isSelected, }) { return ProductsItemModel(
products : products ?? this.products,
isSelected : isSelected ?? this.isSelected,
); } 
@override List<Object?> get props => [products,isSelected];
 }
