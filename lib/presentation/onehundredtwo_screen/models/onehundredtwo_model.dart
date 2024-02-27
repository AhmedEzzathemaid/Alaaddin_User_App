// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'productcard6_item_model.dart';/// This class defines the variables used in the [onehundredtwo_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class OnehundredtwoModel extends Equatable {OnehundredtwoModel({this.productcard6ItemList = const []}) {  }

List<Productcard6ItemModel> productcard6ItemList;

OnehundredtwoModel copyWith({List<Productcard6ItemModel>? productcard6ItemList}) { return OnehundredtwoModel(
productcard6ItemList : productcard6ItemList ?? this.productcard6ItemList,
); } 
@override List<Object?> get props => [productcard6ItemList];
 }
