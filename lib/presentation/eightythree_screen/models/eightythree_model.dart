// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'eightythree_item_model.dart';/// This class defines the variables used in the [eightythree_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class EightythreeModel extends Equatable {EightythreeModel({this.eightythreeItemList = const []}) {  }

List<EightythreeItemModel> eightythreeItemList;

EightythreeModel copyWith({List<EightythreeItemModel>? eightythreeItemList}) { return EightythreeModel(
eightythreeItemList : eightythreeItemList ?? this.eightythreeItemList,
); } 
@override List<Object?> get props => [eightythreeItemList];
 }
