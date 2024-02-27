// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 's8_item_model.dart';/// This class defines the variables used in the [twentyeight_bottomsheet],
/// and is typically used to hold data that is passed between different parts of the application.
class TwentyeightModel extends Equatable {TwentyeightModel({this.s8ItemList = const []}) {  }

List<S8ItemModel> s8ItemList;

TwentyeightModel copyWith({List<S8ItemModel>? s8ItemList}) { return TwentyeightModel(
s8ItemList : s8ItemList ?? this.s8ItemList,
); } 
@override List<Object?> get props => [s8ItemList];
 }
