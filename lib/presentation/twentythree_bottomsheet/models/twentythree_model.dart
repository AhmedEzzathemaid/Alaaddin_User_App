// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 's2_item_model.dart';/// This class defines the variables used in the [twentythree_bottomsheet],
/// and is typically used to hold data that is passed between different parts of the application.
class TwentythreeModel extends Equatable {TwentythreeModel({this.s2ItemList = const []}) {  }

List<S2ItemModel> s2ItemList;

TwentythreeModel copyWith({List<S2ItemModel>? s2ItemList}) { return TwentythreeModel(
s2ItemList : s2ItemList ?? this.s2ItemList,
); } 
@override List<Object?> get props => [s2ItemList];
 }
