// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'arrowturnbackwardround_item_model.dart';/// This class defines the variables used in the [twelve_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class TwelveModel extends Equatable {TwelveModel({this.arrowturnbackwardroundItemList = const []}) {  }

List<ArrowturnbackwardroundItemModel> arrowturnbackwardroundItemList;

TwelveModel copyWith({List<ArrowturnbackwardroundItemModel>? arrowturnbackwardroundItemList}) { return TwelveModel(
arrowturnbackwardroundItemList : arrowturnbackwardroundItemList ?? this.arrowturnbackwardroundItemList,
); } 
@override List<Object?> get props => [arrowturnbackwardroundItemList];
 }
