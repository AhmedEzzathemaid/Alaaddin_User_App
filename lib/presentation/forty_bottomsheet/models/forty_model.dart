// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 's14_item_model.dart';/// This class defines the variables used in the [forty_bottomsheet],
/// and is typically used to hold data that is passed between different parts of the application.
class FortyModel extends Equatable {FortyModel({this.s14ItemList = const []}) {  }

List<S14ItemModel> s14ItemList;

FortyModel copyWith({List<S14ItemModel>? s14ItemList}) { return FortyModel(
s14ItemList : s14ItemList ?? this.s14ItemList,
); } 
@override List<Object?> get props => [s14ItemList];
 }
