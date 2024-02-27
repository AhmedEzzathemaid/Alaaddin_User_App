// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'storeinfo5_item_model.dart';/// This class defines the variables used in the [thirtyeight_bottomsheet],
/// and is typically used to hold data that is passed between different parts of the application.
class ThirtyeightModel extends Equatable {ThirtyeightModel({this.storeinfo5ItemList = const []}) {  }

List<Storeinfo5ItemModel> storeinfo5ItemList;

ThirtyeightModel copyWith({List<Storeinfo5ItemModel>? storeinfo5ItemList}) { return ThirtyeightModel(
storeinfo5ItemList : storeinfo5ItemList ?? this.storeinfo5ItemList,
); } 
@override List<Object?> get props => [storeinfo5ItemList];
 }
