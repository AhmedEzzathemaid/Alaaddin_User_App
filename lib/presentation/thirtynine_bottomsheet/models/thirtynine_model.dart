// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 's12_item_model.dart';/// This class defines the variables used in the [thirtynine_bottomsheet],
/// and is typically used to hold data that is passed between different parts of the application.
class ThirtynineModel extends Equatable {ThirtynineModel({this.s12ItemList = const []}) {  }

List<S12ItemModel> s12ItemList;

ThirtynineModel copyWith({List<S12ItemModel>? s12ItemList}) { return ThirtynineModel(
s12ItemList : s12ItemList ?? this.s12ItemList,
); } 
@override List<Object?> get props => [s12ItemList];
 }
