// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'storeinfo3_item_model.dart';/// This class defines the variables used in the [sixteen_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class SixteenModel extends Equatable {SixteenModel({this.storeinfo3ItemList = const []}) {  }

List<Storeinfo3ItemModel> storeinfo3ItemList;

SixteenModel copyWith({List<Storeinfo3ItemModel>? storeinfo3ItemList}) { return SixteenModel(
storeinfo3ItemList : storeinfo3ItemList ?? this.storeinfo3ItemList,
); } 
@override List<Object?> get props => [storeinfo3ItemList];
 }
