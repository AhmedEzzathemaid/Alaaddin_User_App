// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 's6_item_model.dart';/// This class defines the variables used in the [twentyfive_bottomsheet],
/// and is typically used to hold data that is passed between different parts of the application.
class TwentyfiveModel extends Equatable {TwentyfiveModel({this.s6ItemList = const []}) {  }

List<S6ItemModel> s6ItemList;

TwentyfiveModel copyWith({List<S6ItemModel>? s6ItemList}) { return TwentyfiveModel(
s6ItemList : s6ItemList ?? this.s6ItemList,
); } 
@override List<Object?> get props => [s6ItemList];
 }
