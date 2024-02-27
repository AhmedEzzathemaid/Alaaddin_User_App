// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 's4_item_model.dart';/// This class defines the variables used in the [twentyfour_bottomsheet],
/// and is typically used to hold data that is passed between different parts of the application.
class TwentyfourModel extends Equatable {TwentyfourModel({this.s4ItemList = const []}) {  }

List<S4ItemModel> s4ItemList;

TwentyfourModel copyWith({List<S4ItemModel>? s4ItemList}) { return TwentyfourModel(
s4ItemList : s4ItemList ?? this.s4ItemList,
); } 
@override List<Object?> get props => [s4ItemList];
 }
