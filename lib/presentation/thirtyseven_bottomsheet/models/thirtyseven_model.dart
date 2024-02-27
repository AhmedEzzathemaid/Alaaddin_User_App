// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 's10_item_model.dart';/// This class defines the variables used in the [thirtyseven_bottomsheet],
/// and is typically used to hold data that is passed between different parts of the application.
class ThirtysevenModel extends Equatable {ThirtysevenModel({this.s10ItemList = const []}) {  }

List<S10ItemModel> s10ItemList;

ThirtysevenModel copyWith({List<S10ItemModel>? s10ItemList}) { return ThirtysevenModel(
s10ItemList : s10ItemList ?? this.s10ItemList,
); } 
@override List<Object?> get props => [s10ItemList];
 }
