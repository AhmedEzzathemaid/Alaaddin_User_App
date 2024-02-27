// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 's_item_model.dart';/// This class defines the variables used in the [twentytwo_bottomsheet],
/// and is typically used to hold data that is passed between different parts of the application.
class TwentytwoModel extends Equatable {TwentytwoModel({this.sItemList = const []}) {  }

List<SItemModel> sItemList;

TwentytwoModel copyWith({List<SItemModel>? sItemList}) { return TwentytwoModel(
sItemList : sItemList ?? this.sItemList,
); } 
@override List<Object?> get props => [sItemList];
 }
