// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'storeinfo4_item_model.dart';/// This class defines the variables used in the [seventeen_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class SeventeenModel extends Equatable {SeventeenModel({this.storeinfo4ItemList = const []}) {  }

List<Storeinfo4ItemModel> storeinfo4ItemList;

SeventeenModel copyWith({List<Storeinfo4ItemModel>? storeinfo4ItemList}) { return SeventeenModel(
storeinfo4ItemList : storeinfo4ItemList ?? this.storeinfo4ItemList,
); } 
@override List<Object?> get props => [storeinfo4ItemList];
 }
